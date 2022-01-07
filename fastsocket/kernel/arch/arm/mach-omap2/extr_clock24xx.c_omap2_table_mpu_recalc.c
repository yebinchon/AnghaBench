
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {unsigned long mpu_speed; } ;


 TYPE_1__* curr_prcm_set ;

__attribute__((used)) static unsigned long omap2_table_mpu_recalc(struct clk *clk)
{
 return curr_prcm_set->mpu_speed;
}
