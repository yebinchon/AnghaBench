
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxamci_host {int mmc; TYPE_1__* pdata; scalar_t__ vcc; } ;
struct TYPE_2__ {int ocr_mask; int gpio_power_invert; int (* setpower ) (int ,unsigned int) ;int gpio_power; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mmc_dev (int ) ;
 int mmc_regulator_set_ocr (scalar_t__,unsigned int) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static inline void pxamci_set_power(struct pxamci_host *host, unsigned int vdd)
{
 int on;





 if (!host->vcc && host->pdata &&
     gpio_is_valid(host->pdata->gpio_power)) {
  on = ((1 << vdd) & host->pdata->ocr_mask);
  gpio_set_value(host->pdata->gpio_power,
          !!on ^ host->pdata->gpio_power_invert);
 }
 if (!host->vcc && host->pdata && host->pdata->setpower)
  host->pdata->setpower(mmc_dev(host->mmc), vdd);
}
