
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {struct atmel_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct atmel_nand_host {TYPE_1__* board; } ;
struct TYPE_2__ {int rdy_pin_active_low; int rdy_pin; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static int atmel_nand_device_ready(struct mtd_info *mtd)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct atmel_nand_host *host = nand_chip->priv;

 return gpio_get_value(host->board->rdy_pin) ^
                !!host->board->rdy_pin_active_low;
}
