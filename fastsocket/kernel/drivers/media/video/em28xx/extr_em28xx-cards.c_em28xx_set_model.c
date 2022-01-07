
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xclk; int i2c_speed; } ;
struct em28xx {size_t model; TYPE_1__ board; } ;


 int EM28XX_I2C_CLK_WAIT_ENABLE ;
 int EM28XX_I2C_FREQ_100_KHZ ;
 int EM28XX_XCLK_FREQUENCY_12MHZ ;
 int EM28XX_XCLK_IR_RC5_MODE ;
 int * em28xx_boards ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static inline void em28xx_set_model(struct em28xx *dev)
{
 memcpy(&dev->board, &em28xx_boards[dev->model], sizeof(dev->board));




 if (!dev->board.xclk)
  dev->board.xclk = EM28XX_XCLK_IR_RC5_MODE |
      EM28XX_XCLK_FREQUENCY_12MHZ;

 if (!dev->board.i2c_speed)
  dev->board.i2c_speed = EM28XX_I2C_CLK_WAIT_ENABLE |
           EM28XX_I2C_FREQ_100_KHZ;
}
