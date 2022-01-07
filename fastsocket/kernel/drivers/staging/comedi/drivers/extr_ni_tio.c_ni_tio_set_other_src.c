
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {scalar_t__ variant; unsigned int* regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int EINVAL ;
 unsigned int NITIO_Gi_ABZ_Reg (int ) ;



 scalar_t__ ni_gpct_variant_m_series ;
 int write_register (struct ni_gpct*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_tio_set_other_src(struct ni_gpct *counter, unsigned index,
    unsigned int source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;

 if (counter_dev->variant == ni_gpct_variant_m_series) {
  unsigned int abz_reg, shift, mask;

  abz_reg = NITIO_Gi_ABZ_Reg(counter->counter_index);
  switch (index) {
  case 130:
   shift = 10;
   break;
  case 129:
   shift = 5;
   break;
  case 128:
   shift = 0;
   break;
  default:
   return -EINVAL;
   break;
  }
  mask = 0x1f << shift;
  if (source > 0x1f) {

   source = 0x1f;
  }
  counter_dev->regs[abz_reg] &= ~mask;
  counter_dev->regs[abz_reg] |= (source << shift) & mask;
  write_register(counter, counter_dev->regs[abz_reg], abz_reg);

  return 0;
 }
 return -EINVAL;
}
