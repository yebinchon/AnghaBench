
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct asyncppp* disc_data; } ;
struct asyncppp {int tpkt; int rqueue; int rpkt; int chan; int tsk; int dead_sem; int refcnt; } ;


 int atomic_dec_and_test (int *) ;
 int disc_data_lock ;
 int down (int *) ;
 int kfree (struct asyncppp*) ;
 int kfree_skb (int ) ;
 int ppp_unregister_channel (int *) ;
 int skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void
ppp_asynctty_close(struct tty_struct *tty)
{
 struct asyncppp *ap;

 write_lock_irq(&disc_data_lock);
 ap = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock_irq(&disc_data_lock);
 if (!ap)
  return;
 if (!atomic_dec_and_test(&ap->refcnt))
  down(&ap->dead_sem);
 tasklet_kill(&ap->tsk);

 ppp_unregister_channel(&ap->chan);
 kfree_skb(ap->rpkt);
 skb_queue_purge(&ap->rqueue);
 kfree_skb(ap->tpkt);
 kfree(ap);
}
