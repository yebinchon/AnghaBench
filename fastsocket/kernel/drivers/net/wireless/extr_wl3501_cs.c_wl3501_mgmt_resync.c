
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_resync_req {int sig_id; } ;
struct wl3501_card {int dummy; } ;
typedef int sig ;


 int WL3501_SIG_RESYNC_REQ ;
 int wl3501_esbq_exec (struct wl3501_card*,struct wl3501_resync_req*,int) ;

__attribute__((used)) static int wl3501_mgmt_resync(struct wl3501_card *this)
{
 struct wl3501_resync_req sig = {
  .sig_id = WL3501_SIG_RESYNC_REQ,
 };

 return wl3501_esbq_exec(this, &sig, sizeof(sig));
}
