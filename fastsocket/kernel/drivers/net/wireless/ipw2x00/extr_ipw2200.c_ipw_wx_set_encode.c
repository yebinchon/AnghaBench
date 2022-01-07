
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {scalar_t__ capability; int status; int mutex; TYPE_1__* ieee; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 scalar_t__ IW_MODE_ADHOC ;
 int STATUS_ASSOCIATED ;
 int ipw_disassociate (struct ipw_priv*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int libipw_wx_set_encode (TYPE_1__*,struct iw_request_info*,union iwreq_data*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_encode(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *key)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int ret;
 u32 cap = priv->capability;

 mutex_lock(&priv->mutex);
 ret = libipw_wx_set_encode(priv->ieee, info, wrqu, key);



 if (cap != priv->capability &&
     priv->ieee->iw_mode == IW_MODE_ADHOC &&
     priv->status & STATUS_ASSOCIATED)
  ipw_disassociate(priv);

 mutex_unlock(&priv->mutex);
 return ret;
}
