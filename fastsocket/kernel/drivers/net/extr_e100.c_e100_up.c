
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nic {int watchdog; int napi; TYPE_2__* netdev; TYPE_1__* pdev; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int irq; } ;


 int IRQF_SHARED ;
 int del_timer_sync (int *) ;
 int e100_alloc_cbs (struct nic*) ;
 int e100_clean_cbs (struct nic*) ;
 int e100_enable_irq (struct nic*) ;
 int e100_hw_init (struct nic*) ;
 int e100_intr ;
 int e100_rx_alloc_list (struct nic*) ;
 int e100_rx_clean_list (struct nic*) ;
 int e100_set_multicast_list (TYPE_2__*) ;
 int e100_start_receiver (struct nic*,int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int napi_enable (int *) ;
 int netif_wake_queue (TYPE_2__*) ;
 int request_irq (int ,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static int e100_up(struct nic *nic)
{
 int err;

 if ((err = e100_rx_alloc_list(nic)))
  return err;
 if ((err = e100_alloc_cbs(nic)))
  goto err_rx_clean_list;
 if ((err = e100_hw_init(nic)))
  goto err_clean_cbs;
 e100_set_multicast_list(nic->netdev);
 e100_start_receiver(nic, ((void*)0));
 mod_timer(&nic->watchdog, jiffies);
 if ((err = request_irq(nic->pdev->irq, e100_intr, IRQF_SHARED,
  nic->netdev->name, nic->netdev)))
  goto err_no_irq;
 netif_wake_queue(nic->netdev);
 napi_enable(&nic->napi);


 e100_enable_irq(nic);
 return 0;

err_no_irq:
 del_timer_sync(&nic->watchdog);
err_clean_cbs:
 e100_clean_cbs(nic);
err_rx_clean_list:
 e100_rx_clean_list(nic);
 return err;
}
