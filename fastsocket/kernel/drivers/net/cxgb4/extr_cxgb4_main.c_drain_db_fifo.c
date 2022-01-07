
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_SGE_DBFIFO_STATUS ;
 scalar_t__ G_HP_COUNT (int ) ;
 scalar_t__ G_LP_COUNT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static void drain_db_fifo(struct adapter *adap, int usecs)
{
 u32 v;

 do {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(usecs_to_jiffies(usecs));
  v = t4_read_reg(adap, A_SGE_DBFIFO_STATUS);
  if (G_LP_COUNT(v) == 0 && G_HP_COUNT(v) == 0)
   break;
 } while (1);
}
