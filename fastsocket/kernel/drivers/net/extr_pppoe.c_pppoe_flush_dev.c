
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct pppox_sock {struct net_device* pppoe_dev; struct pppox_sock* next; } ;
struct pppoe_net {int hash_lock; struct pppox_sock** hash_table; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int ) ;
 int PPPOE_HASH_SIZE ;
 int PPPOX_BOUND ;
 int PPPOX_CONNECTED ;
 int PPPOX_ZOMBIE ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int lock_sock (struct sock*) ;
 struct pppoe_net* pppoe_pernet (int ) ;
 int pppox_unbind_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct sock* sk_pppox (struct pppox_sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void pppoe_flush_dev(struct net_device *dev)
{
 struct pppoe_net *pn;
 int i;

 BUG_ON(dev == ((void*)0));

 pn = pppoe_pernet(dev_net(dev));
 if (!pn)
  return;

 write_lock_bh(&pn->hash_lock);
 for (i = 0; i < PPPOE_HASH_SIZE; i++) {
  struct pppox_sock *po = pn->hash_table[i];
  struct sock *sk;

  while (po) {
   while (po && po->pppoe_dev != dev) {
    po = po->next;
   }

   if (!po)
    break;

   sk = sk_pppox(po);
   sock_hold(sk);
   write_unlock_bh(&pn->hash_lock);
   lock_sock(sk);

   if (po->pppoe_dev == dev
       && sk->sk_state & (PPPOX_CONNECTED | PPPOX_BOUND)) {
    pppox_unbind_sock(sk);
    sk->sk_state = PPPOX_ZOMBIE;
    sk->sk_state_change(sk);
    po->pppoe_dev = ((void*)0);
    dev_put(dev);
   }

   release_sock(sk);
   sock_put(sk);






   BUG_ON(pppoe_pernet(dev_net(dev)) == ((void*)0));
   write_lock_bh(&pn->hash_lock);
   po = pn->hash_table[i];
  }
 }
 write_unlock_bh(&pn->hash_lock);
}
