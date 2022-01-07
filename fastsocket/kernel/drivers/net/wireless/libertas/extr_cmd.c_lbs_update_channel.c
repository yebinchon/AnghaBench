
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct lbs_private {TYPE_1__ curbssparams; } ;


 int LBS_DEB_ASSOC ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_get_channel (struct lbs_private*) ;

int lbs_update_channel(struct lbs_private *priv)
{
 int ret;


 lbs_deb_enter(LBS_DEB_ASSOC);

 ret = lbs_get_channel(priv);
 if (ret > 0) {
  priv->curbssparams.channel = ret;
  ret = 0;
 }
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
