
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int DPRINTK (char*,int) ;
 int EINVAL ;



 int RtdDio0CtrlWrite (struct comedi_device*,int) ;
 int RtdDioStatusWrite (struct comedi_device*,int) ;

__attribute__((used)) static int rtd_dio_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);





 switch (data[0]) {
 case 129:
  s->io_bits |= 1 << chan;
  break;
 case 130:
  s->io_bits &= ~(1 << chan);
  break;
 case 128:
  data[1] =
      (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
 }

 DPRINTK("rtd520: port_0_direction=0x%x (1 means out)\n", s->io_bits);

 RtdDioStatusWrite(dev, 0x01);
 RtdDio0CtrlWrite(dev, s->io_bits);
 RtdDioStatusWrite(dev, 0);





 return 1;
}
