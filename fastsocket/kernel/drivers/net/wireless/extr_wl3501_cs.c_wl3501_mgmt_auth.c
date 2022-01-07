
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_card {int bssid; } ;
struct wl3501_auth_req {int timeout; int mac_addr; int type; int sig_id; } ;
typedef int sig ;


 int ETH_ALEN ;
 int WL3501_SIG_AUTH_REQ ;
 int WL3501_SYS_TYPE_OPEN ;
 int dprintk (int,char*) ;
 int memcpy (int ,int ,int ) ;
 int wl3501_esbq_exec (struct wl3501_card*,struct wl3501_auth_req*,int) ;

__attribute__((used)) static int wl3501_mgmt_auth(struct wl3501_card *this)
{
 struct wl3501_auth_req sig = {
  .sig_id = WL3501_SIG_AUTH_REQ,
  .type = WL3501_SYS_TYPE_OPEN,
  .timeout = 1000,
 };

 dprintk(3, "entry");
 memcpy(sig.mac_addr, this->bssid, ETH_ALEN);
 return wl3501_esbq_exec(this, &sig, sizeof(sig));
}
