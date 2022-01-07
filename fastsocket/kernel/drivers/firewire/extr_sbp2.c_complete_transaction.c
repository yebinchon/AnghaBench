
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_orb {int rcode; int kref; int (* callback ) (struct sbp2_orb*,int *) ;int link; } ;
struct fw_card {int lock; } ;


 int RCODE_COMPLETE ;
 int free_orb ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sbp2_orb*,int *) ;

__attribute__((used)) static void complete_transaction(struct fw_card *card, int rcode,
     void *payload, size_t length, void *data)
{
 struct sbp2_orb *orb = data;
 unsigned long flags;
 spin_lock_irqsave(&card->lock, flags);

 if (orb->rcode == -1)
  orb->rcode = rcode;
 if (orb->rcode != RCODE_COMPLETE) {
  list_del(&orb->link);
  spin_unlock_irqrestore(&card->lock, flags);
  orb->callback(orb, ((void*)0));
 } else {
  spin_unlock_irqrestore(&card->lock, flags);
 }

 kref_put(&orb->kref, free_orb);
}
