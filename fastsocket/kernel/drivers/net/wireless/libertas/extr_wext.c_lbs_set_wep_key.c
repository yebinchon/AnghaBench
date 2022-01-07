
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct enc_key {int len; int key; int type; } ;
struct TYPE_2__ {int wep_enabled; } ;
struct assoc_request {int wep_tx_keyidx; TYPE_1__ secinfo; struct enc_key* wep_keys; } ;


 int EINVAL ;
 int KEY_LEN_WEP_104 ;
 int KEY_LEN_WEP_40 ;
 int KEY_TYPE_ID_WEP ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct enc_key*,int ,int) ;

__attribute__((used)) static int lbs_set_wep_key(struct assoc_request *assoc_req,
       const char *key_material,
       u16 key_length,
       u16 index,
       int set_tx_key)
{
 int ret = 0;
 struct enc_key *pkey;

 lbs_deb_enter(LBS_DEB_WEXT);


 if (index > 3) {
  ret = -EINVAL;
  goto out;
 }


 if (key_length > KEY_LEN_WEP_104) {
  ret = -EINVAL;
  goto out;
 }

 pkey = &assoc_req->wep_keys[index];

 if (key_length > 0) {
  memset(pkey, 0, sizeof(struct enc_key));
  pkey->type = KEY_TYPE_ID_WEP;


  pkey->len = (key_length > KEY_LEN_WEP_40) ?
                  KEY_LEN_WEP_104 : KEY_LEN_WEP_40;
  memcpy(pkey->key, key_material, key_length);
 }

 if (set_tx_key) {

  if (!pkey->len) {
   lbs_deb_wext("key not set, so cannot enable it\n");
   ret = -EINVAL;
   goto out;
  }
  assoc_req->wep_tx_keyidx = index;
 }

 assoc_req->secinfo.wep_enabled = 1;

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
