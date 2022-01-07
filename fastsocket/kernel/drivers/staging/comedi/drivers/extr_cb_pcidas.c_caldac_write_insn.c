
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int caldac_8800_write (struct comedi_device*,unsigned int const,unsigned int) ;

__attribute__((used)) static int caldac_write_insn(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 const unsigned int channel = CR_CHAN(insn->chanspec);

 return caldac_8800_write(dev, channel, data[0]);
}
