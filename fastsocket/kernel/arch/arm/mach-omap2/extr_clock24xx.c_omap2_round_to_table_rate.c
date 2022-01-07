
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prcm_config {long mpu_speed; int flags; scalar_t__ xtal_speed; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 long EINVAL ;
 int cpu_mask ;
 struct prcm_config* rate_table ;
 TYPE_1__ sys_ck ;
 struct clk virt_prcm_set ;

__attribute__((used)) static long omap2_round_to_table_rate(struct clk *clk, unsigned long rate)
{
 struct prcm_config *ptr;
 long highest_rate;

 if (clk != &virt_prcm_set)
  return -EINVAL;

 highest_rate = -EINVAL;

 for (ptr = rate_table; ptr->mpu_speed; ptr++) {
  if (!(ptr->flags & cpu_mask))
   continue;
  if (ptr->xtal_speed != sys_ck.rate)
   continue;

  highest_rate = ptr->mpu_speed;


  if (ptr->mpu_speed <= rate)
   break;
 }
 return highest_rate;
}
