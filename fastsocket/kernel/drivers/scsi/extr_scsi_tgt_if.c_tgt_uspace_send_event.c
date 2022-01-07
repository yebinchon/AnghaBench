
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tgt_ring {int tr_lock; int tr_idx; } ;
struct TYPE_2__ {int status; int type; } ;
struct tgt_event {TYPE_1__ hdr; } ;


 int BUSY ;
 int flush_dcache_page (int ) ;
 int mb () ;
 int memcpy (struct tgt_event*,struct tgt_event*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tgt_event* tgt_head_event (struct tgt_ring*,int ) ;
 int tgt_poll_wait ;
 int tgt_ring_idx_inc (struct tgt_ring*) ;
 struct tgt_ring tx_ring ;
 int virt_to_page (struct tgt_event*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int tgt_uspace_send_event(u32 type, struct tgt_event *p)
{
 struct tgt_event *ev;
 struct tgt_ring *ring = &tx_ring;
 unsigned long flags;
 int err = 0;

 spin_lock_irqsave(&ring->tr_lock, flags);

 ev = tgt_head_event(ring, ring->tr_idx);
 if (!ev->hdr.status)
  tgt_ring_idx_inc(ring);
 else
  err = -BUSY;

 spin_unlock_irqrestore(&ring->tr_lock, flags);

 if (err)
  return err;

 memcpy(ev, p, sizeof(*ev));
 ev->hdr.type = type;
 mb();
 ev->hdr.status = 1;

 flush_dcache_page(virt_to_page(ev));

 wake_up_interruptible(&tgt_poll_wait);

 return 0;
}
