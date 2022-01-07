
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; scalar_t__ value; } ;


 int LBS_DEB_WEXT ;
 scalar_t__ MRVDRV_FRAG_MAX_VALUE ;
 scalar_t__ MRVDRV_FRAG_MIN_VALUE ;
 int SNMP_MIB_OID_FRAG_THRESHOLD ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_get_snmp_mib (struct lbs_private*,int ,scalar_t__*) ;

__attribute__((used)) static int lbs_get_frag(struct net_device *dev, struct iw_request_info *info,
    struct iw_param *vwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;
 u16 val = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

 ret = lbs_get_snmp_mib(priv, SNMP_MIB_OID_FRAG_THRESHOLD, &val);
 if (ret)
  goto out;

 vwrq->value = val;
 vwrq->disabled = ((val < MRVDRV_FRAG_MIN_VALUE)
     || (val > MRVDRV_FRAG_MAX_VALUE));
 vwrq->fixed = 1;

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
