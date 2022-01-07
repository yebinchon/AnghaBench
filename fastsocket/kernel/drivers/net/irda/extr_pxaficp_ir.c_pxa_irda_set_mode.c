
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_irda {int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int gpio_pwdown_inverted; int gpio_pwdown; int (* transceiver_mode ) (int ,int) ;} ;


 int IR_OFF ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int pxa2xx_transceiver_mode (int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void pxa_irda_set_mode(struct pxa_irda *si, int mode)
{
 if (si->pdata->transceiver_mode)
  si->pdata->transceiver_mode(si->dev, mode);
 else {
  if (gpio_is_valid(si->pdata->gpio_pwdown))
   gpio_set_value(si->pdata->gpio_pwdown,
     !(mode & IR_OFF) ^
     !si->pdata->gpio_pwdown_inverted);
  pxa2xx_transceiver_mode(si->dev, mode);
 }
}
