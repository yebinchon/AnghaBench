
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dummy; } ;
struct assoc_request {int flags; int bssid; } ;


 int ASSOC_FLAG_BSSID ;
 int ASSOC_FLAG_SSID ;
 int LBS_DEB_ASSOC ;
 int assoc_helper_bssid (struct lbs_private*,struct assoc_request*) ;
 int assoc_helper_essid (struct lbs_private*,struct assoc_request*) ;
 int bssid_any ;
 int bssid_off ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int assoc_helper_associate(struct lbs_private *priv,
                                  struct assoc_request * assoc_req)
{
 int ret = 0, done = 0;

 lbs_deb_enter(LBS_DEB_ASSOC);



 if (test_bit(ASSOC_FLAG_BSSID, &assoc_req->flags)) {
  if (compare_ether_addr(bssid_any, assoc_req->bssid)
      && compare_ether_addr(bssid_off, assoc_req->bssid)) {
   ret = assoc_helper_bssid(priv, assoc_req);
   done = 1;
  }
 }

 if (!done && test_bit(ASSOC_FLAG_SSID, &assoc_req->flags)) {
  ret = assoc_helper_essid(priv, assoc_req);
 }

 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
