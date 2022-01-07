
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ channel; int ssid_len; int ssid; } ;
struct lbs_private {scalar_t__ connect_status; TYPE_1__ curbssparams; } ;
struct assoc_request {scalar_t__ mode; scalar_t__ channel; int flags; int ssid_len; int ssid; } ;


 int ASSOC_FLAG_CHANNEL ;
 int ASSOC_FLAG_MODE ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_ASSOC ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 scalar_t__ lbs_ssid_cmp (int ,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int should_stop_adhoc(struct lbs_private *priv,
                             struct assoc_request * assoc_req)
{
 lbs_deb_enter(LBS_DEB_ASSOC);

 if (priv->connect_status != LBS_CONNECTED)
  return 0;

 if (lbs_ssid_cmp(priv->curbssparams.ssid,
                       priv->curbssparams.ssid_len,
                       assoc_req->ssid, assoc_req->ssid_len) != 0)
  return 1;


 if (test_bit(ASSOC_FLAG_MODE, &assoc_req->flags)) {
  if (assoc_req->mode != IW_MODE_ADHOC)
   return 1;
 }

 if (test_bit(ASSOC_FLAG_CHANNEL, &assoc_req->flags)) {
  if (assoc_req->channel != priv->curbssparams.channel)
   return 1;
 }

 lbs_deb_leave(LBS_DEB_ASSOC);
 return 0;
}
