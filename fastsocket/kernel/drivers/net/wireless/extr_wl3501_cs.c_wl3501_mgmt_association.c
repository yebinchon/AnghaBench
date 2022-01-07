
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_card {int bssid; int cap_info; } ;
struct wl3501_assoc_req {int timeout; int listen_interval; int mac_addr; int cap_info; int sig_id; } ;
typedef int sig ;


 int ETH_ALEN ;
 int WL3501_SIG_ASSOC_REQ ;
 int dprintk (int,char*) ;
 int memcpy (int ,int ,int ) ;
 int wl3501_esbq_exec (struct wl3501_card*,struct wl3501_assoc_req*,int) ;

__attribute__((used)) static int wl3501_mgmt_association(struct wl3501_card *this)
{
 struct wl3501_assoc_req sig = {
  .sig_id = WL3501_SIG_ASSOC_REQ,
  .timeout = 1000,
  .listen_interval = 5,
  .cap_info = this->cap_info,
 };

 dprintk(3, "entry");
 memcpy(sig.mac_addr, this->bssid, ETH_ALEN);
 return wl3501_esbq_exec(this, &sig, sizeof(sig));
}
