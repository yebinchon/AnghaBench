
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {int events; } ;


 int COMEDI_CB_BLOCK ;
 int comedi_buf_memcpy_from (struct comedi_async*,int ,void*,unsigned int) ;
 unsigned int comedi_buf_read_alloc (struct comedi_async*,unsigned int) ;
 int comedi_buf_read_free (struct comedi_async*,unsigned int) ;
 int increment_scan_progress (struct comedi_subdevice*,unsigned int) ;

unsigned int cfc_read_array_from_buffer(struct comedi_subdevice *subd,
     void *data, unsigned int num_bytes)
{
 struct comedi_async *async = subd->async;

 if (num_bytes == 0)
  return 0;

 num_bytes = comedi_buf_read_alloc(async, num_bytes);
 comedi_buf_memcpy_from(async, 0, data, num_bytes);
 comedi_buf_read_free(async, num_bytes);
 increment_scan_progress(subd, num_bytes);
 async->events |= COMEDI_CB_BLOCK;

 return num_bytes;
}
