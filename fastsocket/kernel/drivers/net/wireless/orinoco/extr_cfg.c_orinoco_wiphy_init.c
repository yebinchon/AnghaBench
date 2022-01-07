
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int privid; } ;
struct orinoco_private {int dev; } ;


 int orinoco_wiphy_privid ;
 int set_wiphy_dev (struct wiphy*,int ) ;
 struct orinoco_private* wiphy_priv (struct wiphy*) ;

void orinoco_wiphy_init(struct wiphy *wiphy)
{
 struct orinoco_private *priv = wiphy_priv(wiphy);

 wiphy->privid = orinoco_wiphy_privid;

 set_wiphy_dev(wiphy, priv->dev);
}
