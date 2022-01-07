
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned long* cpm_pdat (int) ;

__attribute__((used)) static int mpc8260cpm_dio_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int port;
 unsigned long *p;

 p = cpm_pdat((int)s->private);

 return 2;
}
