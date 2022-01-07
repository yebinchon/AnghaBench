
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; int function; } ;
struct TYPE_3__ {int rfkill_poll; } ;
struct il_priv {int irq_tasklet; TYPE_2__ watchdog; TYPE_1__ _3945; int alive_start; int init_alive_start; int rx_replenish; int restart; int wait_command_queue; int workqueue; } ;


 int DRV_NAME ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (int ) ;
 int il3945_bg_alive_start ;
 int il3945_bg_init_alive_start ;
 int il3945_bg_restart ;
 int il3945_bg_rx_replenish ;
 int il3945_hw_setup_deferred_work (struct il_priv*) ;
 scalar_t__ il3945_irq_tasklet ;
 int il3945_rfkill_poll ;
 int il_bg_watchdog ;
 int il_setup_scan_deferred_work (struct il_priv*) ;
 int init_timer (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static void
il3945_setup_deferred_work(struct il_priv *il)
{
 il->workqueue = create_singlethread_workqueue(DRV_NAME);

 init_waitqueue_head(&il->wait_command_queue);

 INIT_WORK(&il->restart, il3945_bg_restart);
 INIT_WORK(&il->rx_replenish, il3945_bg_rx_replenish);
 INIT_DELAYED_WORK(&il->init_alive_start, il3945_bg_init_alive_start);
 INIT_DELAYED_WORK(&il->alive_start, il3945_bg_alive_start);
 INIT_DELAYED_WORK(&il->_3945.rfkill_poll, il3945_rfkill_poll);

 il_setup_scan_deferred_work(il);

 il3945_hw_setup_deferred_work(il);

 init_timer(&il->watchdog);
 il->watchdog.data = (unsigned long)il;
 il->watchdog.function = il_bg_watchdog;

 tasklet_init(&il->irq_tasklet,
       (void (*)(unsigned long))il3945_irq_tasklet,
       (unsigned long)il);
}
