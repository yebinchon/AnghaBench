
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct channel {int statusflags; } ;


 int EMPTYWAIT ;
 int TXBUSY ;
 int epca_lock ;
 int setup_empty_event (struct tty_struct*,struct channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct channel* verifyChannel (struct tty_struct*) ;

__attribute__((used)) static void pc_flush_chars(struct tty_struct *tty)
{
 struct channel *ch;




 ch = verifyChannel(tty);
 if (ch != ((void*)0)) {
  unsigned long flags;
  spin_lock_irqsave(&epca_lock, flags);




  if ((ch->statusflags & TXBUSY) &&
    !(ch->statusflags & EMPTYWAIT))
   setup_empty_event(tty, ch);
  spin_unlock_irqrestore(&epca_lock, flags);
 }
}
