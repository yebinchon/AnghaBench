
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_statechangebuf {int mask_length; int sclp_active_facility_mask; scalar_t__ validity_sclp_active_facility_mask; int sclp_send_mask; scalar_t__ validity_sclp_send_mask; int sclp_receive_mask; scalar_t__ validity_sclp_receive_mask; } ;
struct evbuf_header {int dummy; } ;
typedef int sccb_mask_t ;


 int sclp_dispatch_state_change () ;
 int sclp_facilities ;
 int sclp_lock ;
 int sclp_receive_mask ;
 int sclp_send_mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sclp_state_change_cb(struct evbuf_header *evbuf)
{
 unsigned long flags;
 struct sclp_statechangebuf *scbuf;

 scbuf = (struct sclp_statechangebuf *) evbuf;
 if (scbuf->mask_length != sizeof(sccb_mask_t))
  return;
 spin_lock_irqsave(&sclp_lock, flags);
 if (scbuf->validity_sclp_receive_mask)
  sclp_receive_mask = scbuf->sclp_receive_mask;
 if (scbuf->validity_sclp_send_mask)
  sclp_send_mask = scbuf->sclp_send_mask;
 spin_unlock_irqrestore(&sclp_lock, flags);
 if (scbuf->validity_sclp_active_facility_mask)
  sclp_facilities = scbuf->sclp_active_facility_mask;
 sclp_dispatch_state_change();
}
