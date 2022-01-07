
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum action { ____Placeholder_action } action ;
struct TYPE_4__ {int pi; } ;


 int Fail ;
 int Hold ;
 int IDE_WRITE ;
 scalar_t__ PD_MAX_RETRIES ;
 scalar_t__ PD_TMO ;
 int STAT_DRQ ;
 int STAT_ERR ;
 int STAT_READY ;
 int Wait ;
 int do_pd_write_done ;
 scalar_t__ jiffies ;
 int pd_block ;
 int pd_buf ;
 TYPE_1__* pd_current ;
 int pd_ide_command (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ pd_next_buf () ;
 scalar_t__ pd_retries ;
 int pd_run ;
 scalar_t__ pd_timeout ;
 int pd_wait_for (TYPE_1__*,int ,char*) ;
 int phase ;
 int pi_write_block (int ,int ,int) ;

__attribute__((used)) static enum action do_pd_write_start(void)
{
 if (pd_wait_for(pd_current, STAT_READY, "do_pd_write") & STAT_ERR) {
  if (pd_retries < PD_MAX_RETRIES) {
   pd_retries++;
   return Wait;
  }
  return Fail;
 }
 pd_ide_command(pd_current, IDE_WRITE, pd_block, pd_run);
 while (1) {
  if (pd_wait_for(pd_current, STAT_DRQ, "do_pd_write_drq") & STAT_ERR) {
   if (pd_retries < PD_MAX_RETRIES) {
    pd_retries++;
    return Wait;
   }
   return Fail;
  }
  pi_write_block(pd_current->pi, pd_buf, 512);
  if (pd_next_buf())
   break;
 }
 phase = do_pd_write_done;
 pd_timeout = jiffies + PD_TMO;
 return Hold;
}
