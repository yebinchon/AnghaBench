
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 scalar_t__ DMAE_COMP_VAL ;
 scalar_t__* bnx2x_sp (struct bnx2x*,int ) ;
 int might_sleep () ;
 scalar_t__* stats_comp ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_stats_comp(struct bnx2x *bp)
{
 u32 *stats_comp = bnx2x_sp(bp, stats_comp);
 int cnt = 10;

 might_sleep();
 while (*stats_comp != DMAE_COMP_VAL) {
  if (!cnt) {
   BNX2X_ERR("timeout waiting for stats finished\n");
   break;
  }
  cnt--;
  usleep_range(1000, 2000);
 }
 return 1;
}
