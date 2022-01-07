
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct orinoco_private {int iw_mode; int broken_monitor; int has_port3; int has_ibss; } ;
struct net_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EBUSY ;
 int EINVAL ;



 int force_monitor ;
 int orinoco_commit (struct orinoco_private*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int set_port_type (struct orinoco_private*) ;
 struct orinoco_private* wiphy_priv (struct wiphy*) ;
 int wiphy_warn (struct wiphy*,char*) ;

__attribute__((used)) static int orinoco_change_vif(struct wiphy *wiphy, struct net_device *dev,
         enum nl80211_iftype type, u32 *flags,
         struct vif_params *params)
{
 struct orinoco_private *priv = wiphy_priv(wiphy);
 int err = 0;
 unsigned long lock;

 if (orinoco_lock(priv, &lock) != 0)
  return -EBUSY;

 switch (type) {
 case 130:
  if (!priv->has_ibss && !priv->has_port3)
   err = -EINVAL;
  break;

 case 128:
  break;

 case 129:
  if (priv->broken_monitor && !force_monitor) {
   wiphy_warn(wiphy,
       "Monitor mode support is buggy in this firmware, not enabling\n");
   err = -EINVAL;
  }
  break;

 default:
  err = -EINVAL;
 }

 if (!err) {
  priv->iw_mode = type;
  set_port_type(priv);
  err = orinoco_commit(priv);
 }

 orinoco_unlock(priv, &lock);

 return err;
}
