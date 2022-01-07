
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int rts_threshold; int frag_threshold; } ;
struct usbnet {int dummy; } ;
struct rndis_wlan_private {struct usbnet* usbdev; } ;


 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 int set_frag_threshold (struct usbnet*,int ) ;
 int set_rts_threshold (struct usbnet*,int ) ;
 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_set_wiphy_params(struct wiphy *wiphy, u32 changed)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);
 struct usbnet *usbdev = priv->usbdev;
 int err;

 if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
  err = set_frag_threshold(usbdev, wiphy->frag_threshold);
  if (err < 0)
   return err;
 }

 if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
  err = set_rts_threshold(usbdev, wiphy->rts_threshold);
  if (err < 0)
   return err;
 }

 return 0;
}
