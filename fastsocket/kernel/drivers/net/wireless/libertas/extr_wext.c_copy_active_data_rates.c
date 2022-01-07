
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rates; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ mesh_connect_status; TYPE_1__ curbssparams; } ;


 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_WEXT ;
 int MAX_RATES ;
 int lbs_bg_rates ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void copy_active_data_rates(struct lbs_private *priv, u8 *rates)
{
 lbs_deb_enter(LBS_DEB_WEXT);

 if ((priv->connect_status != LBS_CONNECTED) &&
  (priv->mesh_connect_status != LBS_CONNECTED))
  memcpy(rates, lbs_bg_rates, MAX_RATES);
 else
  memcpy(rates, priv->curbssparams.rates, MAX_RATES);

 lbs_deb_leave(LBS_DEB_WEXT);
}
