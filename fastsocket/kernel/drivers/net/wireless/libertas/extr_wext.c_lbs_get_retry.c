
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {void* txretrycount; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; void* value; scalar_t__ disabled; } ;


 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int LBS_DEB_WEXT ;
 int SNMP_MIB_OID_LONG_RETRY_LIMIT ;
 int SNMP_MIB_OID_SHORT_RETRY_LIMIT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_get_snmp_mib (struct lbs_private*,int ,void**) ;

__attribute__((used)) static int lbs_get_retry(struct net_device *dev, struct iw_request_info *info,
     struct iw_param *vwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;
 u16 val = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

 vwrq->disabled = 0;

 if (vwrq->flags & IW_RETRY_LONG) {
  ret = lbs_get_snmp_mib(priv, SNMP_MIB_OID_LONG_RETRY_LIMIT, &val);
  if (ret)
   goto out;


  vwrq->value = val - 1;
  vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
 } else {
  ret = lbs_get_snmp_mib(priv, SNMP_MIB_OID_SHORT_RETRY_LIMIT, &val);
  if (ret)
   goto out;


  priv->txretrycount = val;

  vwrq->value = val - 1;
  vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
 }

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
