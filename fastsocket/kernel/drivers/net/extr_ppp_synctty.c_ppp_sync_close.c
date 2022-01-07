
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct syncppp* disc_data; } ;
struct syncppp {int tpkt; int rqueue; int chan; int tsk; int dead_cmp; int refcnt; } ;


 int atomic_dec_and_test (int *) ;
 int disc_data_lock ;
 int kfree (struct syncppp*) ;
 int kfree_skb (int ) ;
 int ppp_unregister_channel (int *) ;
 int skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;
 int wait_for_completion (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void
ppp_sync_close(struct tty_struct *tty)
{
 struct syncppp *ap;

 write_lock_irq(&disc_data_lock);
 ap = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock_irq(&disc_data_lock);
 if (!ap)
  return;
 if (!atomic_dec_and_test(&ap->refcnt))
  wait_for_completion(&ap->dead_cmp);
 tasklet_kill(&ap->tsk);

 ppp_unregister_channel(&ap->chan);
 skb_queue_purge(&ap->rqueue);
 kfree_skb(ap->tpkt);
 kfree(ap);
}
