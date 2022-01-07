
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int scan_progress; int events; } ;


 int COMEDI_CB_EOS ;
 unsigned int cfc_bytes_per_scan (struct comedi_subdevice*) ;

__attribute__((used)) static void increment_scan_progress(struct comedi_subdevice *subd,
        unsigned int num_bytes)
{
 struct comedi_async *async = subd->async;
 unsigned int scan_length = cfc_bytes_per_scan(subd);

 async->scan_progress += num_bytes;
 if (async->scan_progress >= scan_length) {
  async->scan_progress %= scan_length;
  async->events |= COMEDI_CB_EOS;
 }
}
