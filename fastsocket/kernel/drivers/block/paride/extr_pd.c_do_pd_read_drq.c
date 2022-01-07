
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum action { ____Placeholder_action } action ;
struct TYPE_3__ {int pi; } ;


 int Fail ;
 int Hold ;
 int Ok ;
 scalar_t__ PD_MAX_RETRIES ;
 int STAT_DRQ ;
 int STAT_ERR ;
 int Wait ;
 int do_pd_read_start ;
 int jiffies ;
 int pd_buf ;
 TYPE_1__* pd_current ;
 scalar_t__ pd_next_buf () ;
 int pd_ready () ;
 scalar_t__ pd_retries ;
 int pd_timeout ;
 int pd_wait_for (TYPE_1__*,int ,char*) ;
 int phase ;
 int pi_read_block (int ,int ,int) ;
 int time_after_eq (int ,int ) ;

__attribute__((used)) static enum action do_pd_read_drq(void)
{
 if (!pd_ready() && !time_after_eq(jiffies, pd_timeout))
  return Hold;

 while (1) {
  if (pd_wait_for(pd_current, STAT_DRQ, "do_pd_read_drq") & STAT_ERR) {
   if (pd_retries < PD_MAX_RETRIES) {
    pd_retries++;
    phase = do_pd_read_start;
    return Wait;
   }
   return Fail;
  }
  pi_read_block(pd_current->pi, pd_buf, 512);
  if (pd_next_buf())
   break;
 }
 return Ok;
}
