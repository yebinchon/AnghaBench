
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int pc236_intr_disable (struct comedi_device*) ;

__attribute__((used)) static int pc236_intr_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 pc236_intr_disable(dev);

 return 0;
}
