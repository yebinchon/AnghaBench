
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_cardstate {int bulk_out_endpointAddr; int busy; int bulk_out_urb; int udev; int bulk_out_size; } ;
struct cmdbuf_t {scalar_t__ len; scalar_t__ offset; scalar_t__ buf; scalar_t__ wake_tasklet; int * prev; struct cmdbuf_t* next; } ;
struct TYPE_2__ {struct usb_cardstate* usb; } ;
struct cardstate {int dev; int lock; scalar_t__ connected; int cmdlock; scalar_t__ curlen; int * lastcmdbuf; struct cmdbuf_t* cmdbuf; int cmdbytes; TYPE_1__ hw; } ;


 int DEBUG_OUTPUT ;
 int ENODEV ;
 int ENOENT ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*,int) ;
 int gig_dbg (int ,char*,int,...) ;
 int gigaset_write_bulk_callback ;
 int kfree (struct cmdbuf_t*) ;
 int min (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (scalar_t__) ;
 int usb_fill_bulk_urb (int ,int ,int ,scalar_t__,int,int ,struct cardstate*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int send_cb(struct cardstate *cs, struct cmdbuf_t *cb)
{
 struct cmdbuf_t *tcb;
 unsigned long flags;
 int count;
 int status = -ENOENT;
 struct usb_cardstate *ucs = cs->hw.usb;

 do {
  if (!cb->len) {
   tcb = cb;

   spin_lock_irqsave(&cs->cmdlock, flags);
   cs->cmdbytes -= cs->curlen;
   gig_dbg(DEBUG_OUTPUT, "send_cb: sent %u bytes, %u left",
    cs->curlen, cs->cmdbytes);
   cs->cmdbuf = cb = cb->next;
   if (cb) {
    cb->prev = ((void*)0);
    cs->curlen = cb->len;
   } else {
    cs->lastcmdbuf = ((void*)0);
    cs->curlen = 0;
   }
   spin_unlock_irqrestore(&cs->cmdlock, flags);

   if (tcb->wake_tasklet)
    tasklet_schedule(tcb->wake_tasklet);
   kfree(tcb);
  }
  if (cb) {
   count = min(cb->len, ucs->bulk_out_size);
   gig_dbg(DEBUG_OUTPUT, "send_cb: send %d bytes", count);

   usb_fill_bulk_urb(ucs->bulk_out_urb, ucs->udev,
       usb_sndbulkpipe(ucs->udev,
          ucs->bulk_out_endpointAddr & 0x0f),
       cb->buf + cb->offset, count,
       gigaset_write_bulk_callback, cs);

   cb->offset += count;
   cb->len -= count;
   ucs->busy = 1;

   spin_lock_irqsave(&cs->lock, flags);
   status = cs->connected ? usb_submit_urb(ucs->bulk_out_urb, GFP_ATOMIC) : -ENODEV;
   spin_unlock_irqrestore(&cs->lock, flags);

   if (status) {
    ucs->busy = 0;
    dev_err(cs->dev,
     "could not submit urb (error %d)\n",
     -status);
    cb->len = 0;

   }
  }
 } while (cb && status);

 return status;
}
