
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ mode; scalar_t__ psstate; int psmode; } ;
struct assoc_request {scalar_t__ mode; } ;


 int CMD_OPTION_WAITFORRSP ;
 scalar_t__ IW_MODE_INFRA ;
 int LBS802_11POWERMODECAM ;
 int LBS_DEB_ASSOC ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int SNMP_MIB_OID_BSS_TYPE ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_ps_wakeup (struct lbs_private*,int ) ;
 int lbs_set_snmp_mib (struct lbs_private*,int ,scalar_t__) ;

__attribute__((used)) static int assoc_helper_mode(struct lbs_private *priv,
                             struct assoc_request * assoc_req)
{
 int ret = 0;

 lbs_deb_enter(LBS_DEB_ASSOC);

 if (assoc_req->mode == priv->mode)
  goto done;

 if (assoc_req->mode == IW_MODE_INFRA) {
  if (priv->psstate != PS_STATE_FULL_POWER)
   lbs_ps_wakeup(priv, CMD_OPTION_WAITFORRSP);
  priv->psmode = LBS802_11POWERMODECAM;
 }

 priv->mode = assoc_req->mode;
 ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_BSS_TYPE, assoc_req->mode);

done:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
