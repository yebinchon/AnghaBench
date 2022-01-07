
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tx_cmd {int pa_tbd; } ;
struct TYPE_4__ {int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct i596_tbd {int skb; } ;
struct TYPE_5__ {int pa_cmd; scalar_t__ command; } ;
struct i596_private {TYPE_3__* cmd_head; TYPE_2__ scb; int cmd_backlog; } ;
struct i596_cmd {int command; void* pa_next; } ;
struct TYPE_6__ {int pa_next; } ;




 void* I596_NULL ;
 int barrier () ;
 int dev_kfree_skb_any (int ) ;
 scalar_t__ i596_timeout (struct net_device*,char*,int) ;
 int kfree (unsigned char*) ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 void* pa_to_va (int ) ;
 int va_to_pa (TYPE_3__*) ;

__attribute__((used)) static void
i596_cleanup_cmd(struct net_device *dev) {
 struct i596_private *lp;
 struct i596_cmd *cmd;

 lp = netdev_priv(dev);
 while (lp->cmd_head) {
  cmd = (struct i596_cmd *)lp->cmd_head;

  lp->cmd_head = pa_to_va(lp->cmd_head->pa_next);
  lp->cmd_backlog--;

  switch ((cmd->command) & 0x7) {
   case 128: {
    struct tx_cmd *tx_cmd = (struct tx_cmd *) cmd;
    struct i596_tbd * tx_cmd_tbd;
    tx_cmd_tbd = pa_to_va(tx_cmd->pa_tbd);

    dev_kfree_skb_any(tx_cmd_tbd->skb);

    dev->stats.tx_errors++;
    dev->stats.tx_aborted_errors++;

    cmd->pa_next = I596_NULL;
    kfree((unsigned char *)tx_cmd);
    netif_wake_queue(dev);
    break;
   }
   case 129: {


    cmd->pa_next = I596_NULL;
    kfree((unsigned char *)cmd);
    break;
   }
   default: {
    cmd->pa_next = I596_NULL;
    break;
   }
  }
  barrier();
 }

 if (lp->scb.command && i596_timeout(dev, "i596_cleanup_cmd", 100))
  ;

 lp->scb.pa_cmd = va_to_pa(lp->cmd_head);
}
