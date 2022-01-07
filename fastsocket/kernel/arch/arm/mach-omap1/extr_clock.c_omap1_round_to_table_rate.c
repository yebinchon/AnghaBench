
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpu_rate {long rate; scalar_t__ xtal; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 long EINVAL ;
 TYPE_1__ ck_ref ;
 struct mpu_rate* rate_table ;
 struct clk virtual_ck_mpu ;

__attribute__((used)) static long omap1_round_to_table_rate(struct clk * clk, unsigned long rate)
{

 struct mpu_rate * ptr;
 long highest_rate;

 if (clk != &virtual_ck_mpu)
  return -EINVAL;

 highest_rate = -EINVAL;

 for (ptr = rate_table; ptr->rate; ptr++) {
  if (ptr->xtal != ck_ref.rate)
   continue;

  highest_rate = ptr->rate;


  if (ptr->rate <= rate)
   break;
 }

 return highest_rate;
}
