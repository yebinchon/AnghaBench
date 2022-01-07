
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_6__ {int start; } ;
struct TYPE_5__ {int (* exit ) (int ) ;scalar_t__ is_ac_online; scalar_t__ is_usb_online; } ;
struct TYPE_4__ {int start; } ;


 int * ac_draw ;
 TYPE_3__* ac_irq ;
 int charger_timer ;
 int del_timer_sync (int *) ;
 int dev ;
 int free_irq (int ,int *) ;
 int otg_put_transceiver (scalar_t__) ;
 int pda_psy_ac ;
 int pda_psy_usb ;
 TYPE_2__* pdata ;
 scalar_t__ polling ;
 int polling_timer ;
 int power_supply_unregister (int *) ;
 int regulator_put (int *) ;
 int stub1 (int ) ;
 int supply_timer ;
 scalar_t__ transceiver ;
 TYPE_1__* usb_irq ;

__attribute__((used)) static int pda_power_remove(struct platform_device *pdev)
{
 if (pdata->is_usb_online && usb_irq)
  free_irq(usb_irq->start, &pda_psy_usb);
 if (pdata->is_ac_online && ac_irq)
  free_irq(ac_irq->start, &pda_psy_ac);

 if (polling)
  del_timer_sync(&polling_timer);
 del_timer_sync(&charger_timer);
 del_timer_sync(&supply_timer);

 if (pdata->is_usb_online)
  power_supply_unregister(&pda_psy_usb);
 if (pdata->is_ac_online)
  power_supply_unregister(&pda_psy_ac);




 if (ac_draw) {
  regulator_put(ac_draw);
  ac_draw = ((void*)0);
 }
 if (pdata->exit)
  pdata->exit(dev);

 return 0;
}
