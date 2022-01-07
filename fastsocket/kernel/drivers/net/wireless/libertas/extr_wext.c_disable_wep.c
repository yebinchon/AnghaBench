
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wep_enabled; int auth_mode; } ;
struct assoc_request {int flags; TYPE_2__* wep_keys; TYPE_1__ secinfo; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int ASSOC_FLAG_SECINFO ;
 int ASSOC_FLAG_WEP_KEYS ;
 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void disable_wep(struct assoc_request *assoc_req)
{
 int i;

 lbs_deb_enter(LBS_DEB_WEXT);


 assoc_req->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;


 assoc_req->secinfo.wep_enabled = 0;
 for (i = 0; i < 4; i++)
  assoc_req->wep_keys[i].len = 0;

 set_bit(ASSOC_FLAG_SECINFO, &assoc_req->flags);
 set_bit(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags);

 lbs_deb_leave(LBS_DEB_WEXT);
}
