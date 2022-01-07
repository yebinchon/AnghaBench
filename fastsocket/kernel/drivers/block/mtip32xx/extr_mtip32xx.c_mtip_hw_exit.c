
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct driver_data {TYPE_2__* port; TYPE_1__* pdev; int tasklet; scalar_t__ mmio; int dd_flag; } ;
struct TYPE_6__ {int command_list_dma; int command_list; int cmd_timer; int flags; } ;
struct TYPE_5__ {int dev; int irq; } ;


 int ATA_SECT_SIZE ;
 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 scalar_t__ HW_PORT_PRIV_DMA_SZ ;
 int MTIP_DDF_CLEANUP_BIT ;
 int MTIP_PF_REBUILD_BIT ;
 int del_timer_sync (int *) ;
 int dev_warn (int *,char*) ;
 int devm_free_irq (int *,int ,struct driver_data*) ;
 int dmam_free_coherent (int *,scalar_t__,int ,int ) ;
 int kfree (TYPE_2__*) ;
 int mtip_deinit_port (TYPE_2__*) ;
 scalar_t__ mtip_standby_immediate (TYPE_2__*) ;
 int readl (scalar_t__) ;
 int tasklet_kill (int *) ;
 int test_bit (int ,int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hw_exit(struct driver_data *dd)
{




 if (!test_bit(MTIP_DDF_CLEANUP_BIT, &dd->dd_flag)) {

  if (!test_bit(MTIP_PF_REBUILD_BIT, &dd->port->flags))
   if (mtip_standby_immediate(dd->port))
    dev_warn(&dd->pdev->dev,
     "STANDBY IMMEDIATE failed\n");


  mtip_deinit_port(dd->port);


  writel(readl(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
    dd->mmio + HOST_CTL);
 }

 del_timer_sync(&dd->port->cmd_timer);


 devm_free_irq(&dd->pdev->dev, dd->pdev->irq, dd);


 tasklet_kill(&dd->tasklet);


 dmam_free_coherent(&dd->pdev->dev,
   HW_PORT_PRIV_DMA_SZ + (ATA_SECT_SIZE * 4),
   dd->port->command_list,
   dd->port->command_list_dma);

 kfree(dd->port);

 return 0;
}
