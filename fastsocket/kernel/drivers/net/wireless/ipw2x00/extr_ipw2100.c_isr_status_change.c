
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
struct ipw2100_priv {int status; TYPE_1__ wstats; } ;
struct TYPE_4__ {int status; int name; int (* cb ) (struct ipw2100_priv*,int) ;} ;


 int IPW_DEBUG_INFO (char*) ;
 int IPW_DEBUG_NOTIF (char*,int) ;
 int IPW_STATE_SCANNING ;
 int STATUS_ASSOCIATED ;
 int STATUS_SCANNING ;
 int schedule_reset (struct ipw2100_priv*) ;
 TYPE_2__* status_handlers ;
 int stub1 (struct ipw2100_priv*,int) ;

__attribute__((used)) static void isr_status_change(struct ipw2100_priv *priv, int status)
{
 int i;

 if (status == IPW_STATE_SCANNING &&
     priv->status & STATUS_ASSOCIATED &&
     !(priv->status & STATUS_SCANNING)) {
  IPW_DEBUG_INFO("Scan detected while associated, with "
          "no scan request.  Restarting firmware.\n");


  schedule_reset(priv);
 }

 for (i = 0; status_handlers[i].status != -1; i++) {
  if (status == status_handlers[i].status) {
   IPW_DEBUG_NOTIF("Status change: %s\n",
     status_handlers[i].name);
   if (status_handlers[i].cb)
    status_handlers[i].cb(priv, status);
   priv->wstats.status = status;
   return;
  }
 }

 IPW_DEBUG_NOTIF("unknown status received: %04x\n", status);
}
