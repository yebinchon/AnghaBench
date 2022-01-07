
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sk; int * file; } ;
struct tun_struct {int dev; TYPE_2__ socket; int * tfile; } ;
struct TYPE_3__ {int sk_receive_queue; } ;


 int dev_put (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void __tun_detach(struct tun_struct *tun)
{

 netif_tx_lock_bh(tun->dev);
 tun->tfile = ((void*)0);
 tun->socket.file = ((void*)0);
 netif_tx_unlock_bh(tun->dev);


 skb_queue_purge(&tun->socket.sk->sk_receive_queue);


 dev_put(tun->dev);
}
