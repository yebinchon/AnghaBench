
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int LUBBOCK_SD_IRQ ;
 int del_timer_sync (int *) ;
 int free_irq (int ,void*) ;
 int mmc_timer ;

__attribute__((used)) static void lubbock_mci_exit(struct device *dev, void *data)
{
 free_irq(LUBBOCK_SD_IRQ, data);
 del_timer_sync(&mmc_timer);
}
