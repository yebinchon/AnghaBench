
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;


 int ni_get_freq_out_clock (struct comedi_device*,unsigned int*,unsigned int*) ;
 int ni_set_freq_out_clock (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int ni_freq_out_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 switch (data[0]) {
 case 128:
  return ni_set_freq_out_clock(dev, data[1]);
  break;
 case 129:
  ni_get_freq_out_clock(dev, &data[1], &data[2]);
  return 3;
 default:
  break;
 }
 return -EINVAL;
}
