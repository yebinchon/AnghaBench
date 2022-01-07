
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_nand_host {TYPE_1__* board; } ;
struct TYPE_2__ {scalar_t__ enable_pin; } ;


 int gpio_set_value (scalar_t__,int) ;

__attribute__((used)) static void atmel_nand_disable(struct atmel_nand_host *host)
{
 if (host->board->enable_pin)
  gpio_set_value(host->board->enable_pin, 1);
}
