
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx8025_data {int ctrl1; int client; } ;
struct device {int dummy; } ;


 int RX8025_BIT_CTRL1_DALE ;
 int RX8025_REG_CTRL1 ;
 struct rx8025_data* dev_get_drvdata (struct device*) ;
 int rx8025_write_reg (int ,int ,int ) ;

__attribute__((used)) static int rx8025_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct rx8025_data *rx8025 = dev_get_drvdata(dev);
 u8 ctrl1;
 int err;

 ctrl1 = rx8025->ctrl1;
 if (enabled)
  ctrl1 |= RX8025_BIT_CTRL1_DALE;
 else
  ctrl1 &= ~RX8025_BIT_CTRL1_DALE;

 if (ctrl1 != rx8025->ctrl1) {
  rx8025->ctrl1 = ctrl1;
  err = rx8025_write_reg(rx8025->client, RX8025_REG_CTRL1,
           rx8025->ctrl1);
  if (err)
   return err;
 }
 return 0;
}
