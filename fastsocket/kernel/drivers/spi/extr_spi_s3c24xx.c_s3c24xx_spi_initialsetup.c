
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_spi {scalar_t__ set_cs; TYPE_1__* pdata; scalar_t__ regs; int clk; } ;
struct TYPE_2__ {int (* gpio_setup ) (TYPE_1__*,int) ;int pin_cs; } ;


 scalar_t__ S3C2410_SPCON ;
 scalar_t__ S3C2410_SPPIN ;
 scalar_t__ S3C2410_SPPRE ;
 int SPCON_DEFAULT ;
 int SPPIN_DEFAULT ;
 int clk_enable (int ) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ s3c24xx_spi_gpiocs ;
 int stub1 (TYPE_1__*,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void s3c24xx_spi_initialsetup(struct s3c24xx_spi *hw)
{


 clk_enable(hw->clk);



 writeb(0xff, hw->regs + S3C2410_SPPRE);
 writeb(SPPIN_DEFAULT, hw->regs + S3C2410_SPPIN);
 writeb(SPCON_DEFAULT, hw->regs + S3C2410_SPCON);

 if (hw->pdata) {
  if (hw->set_cs == s3c24xx_spi_gpiocs)
   gpio_direction_output(hw->pdata->pin_cs, 1);

  if (hw->pdata->gpio_setup)
   hw->pdata->gpio_setup(hw->pdata, 1);
 }
}
