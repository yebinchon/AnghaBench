
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct cardstate {int lock; struct tty_struct* tty; } ;


 int DEBUG_ANY ;
 int gig_dbg (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,size_t) ;

void gigaset_if_receive(struct cardstate *cs,
   unsigned char *buffer, size_t len)
{
 unsigned long flags;
 struct tty_struct *tty;

 spin_lock_irqsave(&cs->lock, flags);
 if ((tty = cs->tty) == ((void*)0))
  gig_dbg(DEBUG_ANY, "receive on closed device");
 else {
  tty_insert_flip_string(tty, buffer, len);
  tty_flip_buffer_push(tty);
 }
 spin_unlock_irqrestore(&cs->lock, flags);
}
