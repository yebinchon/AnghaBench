
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx8025_data {int ctrl1; int client; } ;
struct i2c_client {int dev; } ;


 int RX8025_BIT_CTRL1_TEST ;
 int RX8025_BIT_CTRL2_CTFG ;
 int RX8025_BIT_CTRL2_DAFG ;
 int RX8025_BIT_CTRL2_PON ;
 int RX8025_BIT_CTRL2_VDET ;
 int RX8025_BIT_CTRL2_WAFG ;
 int RX8025_BIT_CTRL2_XST ;
 int RX8025_REG_CTRL1 ;
 int RX8025_REG_CTRL2 ;
 int dev_warn (int *,char*) ;
 struct rx8025_data* i2c_get_clientdata (struct i2c_client*) ;
 int rx8025_read_regs (int ,int ,int,int*) ;
 int rx8025_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static int rx8025_init_client(struct i2c_client *client, int *need_reset)
{
 struct rx8025_data *rx8025 = i2c_get_clientdata(client);
 u8 ctrl[2], ctrl2;
 int need_clear = 0;
 int err;

 err = rx8025_read_regs(rx8025->client, RX8025_REG_CTRL1, 2, ctrl);
 if (err)
  goto out;


 rx8025->ctrl1 = ctrl[0] & ~RX8025_BIT_CTRL1_TEST;

 if (ctrl[1] & RX8025_BIT_CTRL2_PON) {
  dev_warn(&client->dev, "power-on reset was detected, "
    "you may have to readjust the clock\n");
  *need_reset = 1;
 }

 if (ctrl[1] & RX8025_BIT_CTRL2_VDET) {
  dev_warn(&client->dev, "a power voltage drop was detected, "
    "you may have to readjust the clock\n");
  *need_reset = 1;
 }

 if (!(ctrl[1] & RX8025_BIT_CTRL2_XST)) {
  dev_warn(&client->dev, "Oscillation stop was detected,"
    "you may have to readjust the clock\n");
  *need_reset = 1;
 }

 if (ctrl[1] & (RX8025_BIT_CTRL2_DAFG | RX8025_BIT_CTRL2_WAFG)) {
  dev_warn(&client->dev, "Alarm was detected\n");
  need_clear = 1;
 }

 if (!(ctrl[1] & RX8025_BIT_CTRL2_CTFG))
  need_clear = 1;

 if (*need_reset || need_clear) {
  ctrl2 = ctrl[0];
  ctrl2 &= ~(RX8025_BIT_CTRL2_PON | RX8025_BIT_CTRL2_VDET |
      RX8025_BIT_CTRL2_CTFG | RX8025_BIT_CTRL2_WAFG |
      RX8025_BIT_CTRL2_DAFG);
  ctrl2 |= RX8025_BIT_CTRL2_XST;

  err = rx8025_write_reg(client, RX8025_REG_CTRL2, ctrl2);
 }
out:
 return err;
}
