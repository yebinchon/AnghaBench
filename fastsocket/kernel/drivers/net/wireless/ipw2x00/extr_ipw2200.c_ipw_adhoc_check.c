
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int beacon_interval; } ;
struct ipw_priv {scalar_t__ disassociate_threshold; int config; TYPE_1__ assoc_request; int adhoc_check; int missed_adhoc_beacons; } ;


 int CFG_ADHOC_PERSIST ;
 int IPW_DEBUG (int,char*,int ) ;
 int IPW_DL_ASSOC ;
 int IPW_DL_INFO ;
 int IPW_DL_NOTIF ;
 int IPW_DL_STATE ;
 int ipw_disassociate (struct ipw_priv*) ;
 int ipw_remove_current_network (struct ipw_priv*) ;
 int le16_to_cpu (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void ipw_adhoc_check(void *data)
{
 struct ipw_priv *priv = data;

 if (priv->missed_adhoc_beacons++ > priv->disassociate_threshold &&
     !(priv->config & CFG_ADHOC_PERSIST)) {
  IPW_DEBUG(IPW_DL_INFO | IPW_DL_NOTIF |
     IPW_DL_STATE | IPW_DL_ASSOC,
     "Missed beacon: %d - disassociate\n",
     priv->missed_adhoc_beacons);
  ipw_remove_current_network(priv);
  ipw_disassociate(priv);
  return;
 }

 schedule_delayed_work(&priv->adhoc_check,
         le16_to_cpu(priv->assoc_request.beacon_interval));
}
