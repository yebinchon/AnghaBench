
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ value; scalar_t__ disabled; } ;


 int EINVAL ;
 int LBS_DEB_WEXT ;
 scalar_t__ MRVDRV_RTS_MAX_VALUE ;
 int SNMP_MIB_OID_RTS_THRESHOLD ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_set_snmp_mib (struct lbs_private*,int ,int ) ;

__attribute__((used)) static int lbs_set_rts(struct net_device *dev, struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;
 u32 val = vwrq->value;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (vwrq->disabled)
  val = MRVDRV_RTS_MAX_VALUE;

 if (val > MRVDRV_RTS_MAX_VALUE)
  return -EINVAL;

 ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_RTS_THRESHOLD, (u16) val);

 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
