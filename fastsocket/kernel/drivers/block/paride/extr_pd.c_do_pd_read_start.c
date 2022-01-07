
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum action { ____Placeholder_action } action ;


 int Fail ;
 int Hold ;
 int IDE_READ ;
 scalar_t__ PD_MAX_RETRIES ;
 scalar_t__ PD_TMO ;
 int STAT_ERR ;
 int STAT_READY ;
 int Wait ;
 int do_pd_read_drq ;
 scalar_t__ jiffies ;
 int pd_block ;
 int pd_current ;
 int pd_ide_command (int ,int ,int ,int ) ;
 scalar_t__ pd_retries ;
 int pd_run ;
 scalar_t__ pd_timeout ;
 int pd_wait_for (int ,int ,char*) ;
 int phase ;

__attribute__((used)) static enum action do_pd_read_start(void)
{
 if (pd_wait_for(pd_current, STAT_READY, "do_pd_read") & STAT_ERR) {
  if (pd_retries < PD_MAX_RETRIES) {
   pd_retries++;
   return Wait;
  }
  return Fail;
 }
 pd_ide_command(pd_current, IDE_READ, pd_block, pd_run);
 phase = do_pd_read_drq;
 pd_timeout = jiffies + PD_TMO;
 return Hold;
}
