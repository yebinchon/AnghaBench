
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct wl3501_get_req {int mib_attrib; int sig_id; } ;
struct TYPE_2__ {int mib_status; int mib_value; } ;
struct wl3501_card {int lock; TYPE_1__ sig_get_confirm; int wait; } ;
typedef int sig ;


 int EIO ;
 int WL3501_SIG_GET_REQ ;
 int memcpy (void*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;
 int wl3501_esbq_req (struct wl3501_card*,scalar_t__*) ;
 scalar_t__ wl3501_esbq_req_test (struct wl3501_card*) ;
 scalar_t__ wl3501_get_tx_buffer (struct wl3501_card*,int) ;
 int wl3501_set_to_wla (struct wl3501_card*,scalar_t__,struct wl3501_get_req*,int) ;

__attribute__((used)) static int wl3501_get_mib_value(struct wl3501_card *this, u8 index,
    void *bf, int size)
{
 struct wl3501_get_req sig = {
  .sig_id = WL3501_SIG_GET_REQ,
  .mib_attrib = index,
 };
 unsigned long flags;
 int rc = -EIO;

 spin_lock_irqsave(&this->lock, flags);
 if (wl3501_esbq_req_test(this)) {
  u16 ptr = wl3501_get_tx_buffer(this, sizeof(sig));
  if (ptr) {
   wl3501_set_to_wla(this, ptr, &sig, sizeof(sig));
   wl3501_esbq_req(this, &ptr);
   this->sig_get_confirm.mib_status = 255;
   spin_unlock_irqrestore(&this->lock, flags);
   rc = wait_event_interruptible(this->wait,
    this->sig_get_confirm.mib_status != 255);
   if (!rc)
    memcpy(bf, this->sig_get_confirm.mib_value,
           size);
   goto out;
  }
 }
 spin_unlock_irqrestore(&this->lock, flags);
out:
 return rc;
}
