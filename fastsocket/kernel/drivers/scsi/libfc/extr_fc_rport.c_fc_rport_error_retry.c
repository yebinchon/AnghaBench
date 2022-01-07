
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_priv {scalar_t__ retries; int retry_work; TYPE_1__* local_port; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_rport_retry_count; } ;


 unsigned long FC_DEF_E_D_TOV ;
 int FC_EX_CLOSED ;
 int FC_EX_TIMEOUT ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ,int ) ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_rport_error (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void fc_rport_error_retry(struct fc_rport_priv *rdata,
     struct fc_frame *fp)
{
 unsigned long delay = FC_DEF_E_D_TOV;


 if (PTR_ERR(fp) == -FC_EX_CLOSED)
  goto out;

 if (rdata->retries < rdata->local_port->max_rport_retry_count) {
  FC_RPORT_DBG(rdata, "Error %ld in state %s, retrying\n",
        PTR_ERR(fp), fc_rport_state(rdata));
  rdata->retries++;

  if (PTR_ERR(fp) == -FC_EX_TIMEOUT)
   delay = 0;
  schedule_delayed_work(&rdata->retry_work, delay);
  return;
 }

out:
 fc_rport_error(rdata, fp);
}
