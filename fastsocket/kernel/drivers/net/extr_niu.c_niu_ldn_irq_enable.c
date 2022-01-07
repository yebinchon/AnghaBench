
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct niu {int dummy; } ;


 int EINVAL ;
 int LDN_MAX ;
 unsigned long LD_IM0 (int) ;
 unsigned long LD_IM0_MASK ;
 unsigned long LD_IM1 (int) ;
 unsigned long LD_IM1_MASK ;
 unsigned long nr64 (unsigned long) ;
 int nw64 (unsigned long,unsigned long) ;

__attribute__((used)) static int niu_ldn_irq_enable(struct niu *np, int ldn, int on)
{
 unsigned long mask_reg, bits;
 u64 val;

 if (ldn < 0 || ldn > LDN_MAX)
  return -EINVAL;

 if (ldn < 64) {
  mask_reg = LD_IM0(ldn);
  bits = LD_IM0_MASK;
 } else {
  mask_reg = LD_IM1(ldn - 64);
  bits = LD_IM1_MASK;
 }

 val = nr64(mask_reg);
 if (on)
  val &= ~bits;
 else
  val |= bits;
 nw64(mask_reg, val);

 return 0;
}
