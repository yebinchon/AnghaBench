
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enc_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct TYPE_4__ {int flags; } ;
struct assoc_request {int flags; TYPE_1__ secinfo; TYPE_2__ wpa_unicast_key; TYPE_2__ wpa_mcast_key; } ;


 int ASSOC_FLAG_SECINFO ;
 int ASSOC_FLAG_WPA_MCAST_KEY ;
 int ASSOC_FLAG_WPA_UCAST_KEY ;
 int KEY_INFO_WPA_MCAST ;
 int KEY_INFO_WPA_UNICAST ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void disable_wpa(struct assoc_request *assoc_req)
{
 lbs_deb_enter(LBS_DEB_WEXT);

 memset(&assoc_req->wpa_mcast_key, 0, sizeof (struct enc_key));
 assoc_req->wpa_mcast_key.flags = KEY_INFO_WPA_MCAST;
 set_bit(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags);

 memset(&assoc_req->wpa_unicast_key, 0, sizeof (struct enc_key));
 assoc_req->wpa_unicast_key.flags = KEY_INFO_WPA_UNICAST;
 set_bit(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags);

 assoc_req->secinfo.WPAenabled = 0;
 assoc_req->secinfo.WPA2enabled = 0;
 set_bit(ASSOC_FLAG_SECINFO, &assoc_req->flags);

 lbs_deb_leave(LBS_DEB_WEXT);
}
