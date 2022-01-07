
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int tx_queue; } ;


 int kfree (TYPE_1__*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void btmrvl_free_adapter(struct btmrvl_private *priv)
{
 skb_queue_purge(&priv->adapter->tx_queue);

 kfree(priv->adapter);

 priv->adapter = ((void*)0);
}
