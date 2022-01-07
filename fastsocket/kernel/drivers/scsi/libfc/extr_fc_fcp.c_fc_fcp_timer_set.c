
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int state; int timer; } ;


 int FC_SRB_COMPL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void fc_fcp_timer_set(struct fc_fcp_pkt *fsp, unsigned long delay)
{
 if (!(fsp->state & FC_SRB_COMPL))
  mod_timer(&fsp->timer, jiffies + delay);
}
