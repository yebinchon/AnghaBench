
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;
 int M_Offset_Static_Digital_Input ;
 int M_Offset_Static_Digital_Output ;
 unsigned int ni_readl (int ) ;
 int ni_writel (unsigned int,int ) ;
 int printk (char*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_m_series_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{




 if (insn->n != 2)
  return -EINVAL;
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  ni_writel(s->state, M_Offset_Static_Digital_Output);
 }
 data[1] = ni_readl(M_Offset_Static_Digital_Input);

 return 2;
}
