
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int cmd_wait_q; int ps_state; int tx_queue; } ;


 int PS_AWAKE ;
 int init_waitqueue_head (int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void btmrvl_init_adapter(struct btmrvl_private *priv)
{
 skb_queue_head_init(&priv->adapter->tx_queue);

 priv->adapter->ps_state = PS_AWAKE;

 init_waitqueue_head(&priv->adapter->cmd_wait_q);
}
