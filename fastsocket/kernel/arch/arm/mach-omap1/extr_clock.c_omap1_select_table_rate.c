
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpu_rate {long rate; scalar_t__ xtal; scalar_t__ pll_rate; int ckctl_val; int dpllctl_val; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {scalar_t__ rate; } ;


 int EINVAL ;
 TYPE_2__ ck_dpll1 ;
 TYPE_1__ ck_ref ;
 scalar_t__ cpu_is_omap730 () ;
 scalar_t__ likely (int) ;
 int omap_sram_reprogram_clock (int ,int) ;
 struct mpu_rate* rate_table ;
 struct clk virtual_ck_mpu ;

__attribute__((used)) static int omap1_select_table_rate(struct clk * clk, unsigned long rate)
{

 struct mpu_rate * ptr;

 if (clk != &virtual_ck_mpu)
  return -EINVAL;

 for (ptr = rate_table; ptr->rate; ptr++) {
  if (ptr->xtal != ck_ref.rate)
   continue;


  if (likely(ck_dpll1.rate!=0) && ptr->pll_rate != ck_dpll1.rate)
   continue;


  if (ptr->rate <= rate)
   break;
 }

 if (!ptr->rate)
  return -EINVAL;






 if (cpu_is_omap730())
  omap_sram_reprogram_clock(ptr->dpllctl_val, ptr->ckctl_val | 0x2000);
 else
  omap_sram_reprogram_clock(ptr->dpllctl_val, ptr->ckctl_val);

 ck_dpll1.rate = ptr->pll_rate;
 return 0;
}
