
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_3__ {int IO_ADDR_W; } ;
struct TYPE_4__ {int gpio_ale; int gpio_cle; int gpio_nce; } ;
struct gpiomtd {TYPE_1__ nand_chip; TYPE_2__ plat; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int gpio_nand_dosync (struct gpiomtd*) ;
 struct gpiomtd* gpio_nand_getpriv (struct mtd_info*) ;
 int gpio_set_value (int ,int) ;
 int writeb (int,int ) ;

__attribute__((used)) static void gpio_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct gpiomtd *gpiomtd = gpio_nand_getpriv(mtd);

 gpio_nand_dosync(gpiomtd);

 if (ctrl & NAND_CTRL_CHANGE) {
  gpio_set_value(gpiomtd->plat.gpio_nce, !(ctrl & NAND_NCE));
  gpio_set_value(gpiomtd->plat.gpio_cle, !!(ctrl & NAND_CLE));
  gpio_set_value(gpiomtd->plat.gpio_ale, !!(ctrl & NAND_ALE));
  gpio_nand_dosync(gpiomtd);
 }
 if (cmd == NAND_CMD_NONE)
  return;

 writeb(cmd, gpiomtd->nand_chip.IO_ADDR_W);
 gpio_nand_dosync(gpiomtd);
}
