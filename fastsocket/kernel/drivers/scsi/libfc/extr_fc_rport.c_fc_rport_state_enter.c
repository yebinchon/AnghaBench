
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {int rp_state; scalar_t__ retries; } ;
typedef enum fc_rport_state { ____Placeholder_fc_rport_state } fc_rport_state ;



__attribute__((used)) static void fc_rport_state_enter(struct fc_rport_priv *rdata,
     enum fc_rport_state new)
{
 if (rdata->rp_state != new)
  rdata->retries = 0;
 rdata->rp_state = new;
}
