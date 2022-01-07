
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int ni_tio_rinsn (struct ni_gpct*,struct comedi_insn*,unsigned int*) ;

__attribute__((used)) static int ni_gpct_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 struct ni_gpct *counter = s->private;
 return ni_tio_rinsn(counter, insn, data);
}
