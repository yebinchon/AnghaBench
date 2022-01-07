
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; } ;


 int ENOTSUPP ;
 int M_Offset_PFI_DI ;
 int M_Offset_PFI_DO ;
 TYPE_1__ boardtype ;
 unsigned int ni_readw (int ) ;
 int ni_reg_m_series_mask ;
 int ni_writew (unsigned int,int ) ;

__attribute__((used)) static int ni_pfi_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 if ((boardtype.reg_type & ni_reg_m_series_mask) == 0) {
  return -ENOTSUPP;
 }
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  ni_writew(s->state, M_Offset_PFI_DO);
 }
 data[1] = ni_readw(M_Offset_PFI_DI);
 return 2;
}
