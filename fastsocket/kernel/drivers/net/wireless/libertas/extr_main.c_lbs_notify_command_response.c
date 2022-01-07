
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lbs_private {scalar_t__ psstate; int resp_idx; int waitq; } ;


 int BUG_ON (int) ;
 int LBS_DEB_THREAD ;
 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_SLEEP ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int wake_up_interruptible (int *) ;

void lbs_notify_command_response(struct lbs_private *priv, u8 resp_idx)
{
 lbs_deb_enter(LBS_DEB_THREAD);

 if (priv->psstate == PS_STATE_SLEEP)
  priv->psstate = PS_STATE_AWAKE;


 BUG_ON(resp_idx > 1);
 priv->resp_idx = resp_idx;

 wake_up_interruptible(&priv->waitq);

 lbs_deb_leave(LBS_DEB_THREAD);
}
