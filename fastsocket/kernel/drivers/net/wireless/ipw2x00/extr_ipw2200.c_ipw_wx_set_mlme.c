
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; int reason_code; } ;
struct ipw_priv {int dummy; } ;
typedef int __le16 ;


 int EOPNOTSUPP ;


 int cpu_to_le16 (int ) ;
 int ipw_disassociate (struct ipw_priv*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw_wx_set_mlme(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 struct iw_mlme *mlme = (struct iw_mlme *)extra;
 __le16 reason;

 reason = cpu_to_le16(mlme->reason_code);

 switch (mlme->cmd) {
 case 129:

  break;

 case 128:
  ipw_disassociate(priv);
  break;

 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
