
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ txretrycount; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; scalar_t__ value; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int IW_RETRY_TYPE ;
 int LBS_DEB_WEXT ;
 int SNMP_MIB_OID_LONG_RETRY_LIMIT ;
 int SNMP_MIB_OID_SHORT_RETRY_LIMIT ;
 scalar_t__ TX_RETRY_MAX ;
 scalar_t__ TX_RETRY_MIN ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_set_snmp_mib (struct lbs_private*,int ,scalar_t__) ;

__attribute__((used)) static int lbs_set_retry(struct net_device *dev, struct iw_request_info *info,
     struct iw_param *vwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;
 u16 slimit = 0, llimit = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

        if ((vwrq->flags & IW_RETRY_TYPE) != IW_RETRY_LIMIT)
                return -EOPNOTSUPP;





 if (vwrq->value < 0 || vwrq->value > 14)
  return -EINVAL;


 if (vwrq->flags & IW_RETRY_SHORT)
  slimit = (u16) (vwrq->value + 1);
 else if (vwrq->flags & IW_RETRY_LONG)
  llimit = (u16) (vwrq->value + 1);
 else
  slimit = llimit = (u16) (vwrq->value + 1);

 if (llimit) {
  ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_LONG_RETRY_LIMIT,
           llimit);
  if (ret)
   goto out;
 }

 if (slimit) {

  priv->txretrycount = slimit;
  ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_SHORT_RETRY_LIMIT,
           slimit);
  if (ret)
   goto out;
 }

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
