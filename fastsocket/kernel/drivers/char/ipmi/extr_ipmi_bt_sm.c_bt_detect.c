
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int dummy; } ;


 int BT_INTMASK_R ;
 int BT_STATUS ;
 int reset_flags (struct si_sm_data*) ;

__attribute__((used)) static int bt_detect(struct si_sm_data *bt)
{







 if ((BT_STATUS == 0xFF) && (BT_INTMASK_R == 0xFF))
  return 1;
 reset_flags(bt);
 return 0;
}
