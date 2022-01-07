
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_card_event {int workq; } ;


 int U300_GPIO_PIN_MMC_CD ;
 int disable_irq_on_gpio_pin (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int mmci_callback(void *data)
{
 struct mmci_card_event *mmci_card = data;

 disable_irq_on_gpio_pin(U300_GPIO_PIN_MMC_CD);
 schedule_work(&mmci_card->workq);

 return 0;
}
