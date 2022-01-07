
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_control {int value; int id; } ;
struct ovcamchip {struct ov6x20* spriv; } ;
struct ov6x20 {int bandfilt; int auto_brt; int auto_exp; int backlight; int mirror; } ;
struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*,int,...) ;
 int EPERM ;
 int REG_BLUE ;
 int REG_BRT ;
 int REG_CNT ;
 int REG_EXP ;
 int REG_RED ;
 int REG_SAT ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov_write (struct i2c_client*,int,int) ;
 int ov_write_mask (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ov6x20_set_control(struct i2c_client *c,
         struct ovcamchip_control *ctl)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov6x20 *s = ov->spriv;
 int rc;
 int v = ctl->value;

 switch (ctl->id) {
 case 133:
  rc = ov_write(c, REG_CNT, v >> 8);
  break;
 case 134:
  rc = ov_write(c, REG_BRT, v >> 8);
  break;
 case 128:
  rc = ov_write(c, REG_SAT, v >> 8);
  break;
 case 130:
  rc = ov_write(c, REG_RED, 0xFF - (v >> 8));
  if (rc < 0)
   goto out;

  rc = ov_write(c, REG_BLUE, v >> 8);
  break;
 case 132:
  rc = ov_write(c, REG_EXP, v);
  break;
 case 131:
 {
  int sixty = (v == 60);

  rc = ov_write(c, 0x2b, sixty?0xa8:0x28);
  if (rc < 0)
   goto out;

  rc = ov_write(c, 0x2a, sixty?0x84:0xa4);
  break;
 }
 case 135:
  rc = ov_write_mask(c, 0x2d, v?0x04:0x00, 0x04);
  s->bandfilt = v;
  break;
 case 138:
  rc = ov_write_mask(c, 0x2d, v?0x10:0x00, 0x10);
  s->auto_brt = v;
  break;
 case 137:
  rc = ov_write_mask(c, 0x13, v?0x01:0x00, 0x01);
  s->auto_exp = v;
  break;
 case 136:
 {
  rc = ov_write_mask(c, 0x4e, v?0xe0:0xc0, 0xe0);
  if (rc < 0)
   goto out;

  rc = ov_write_mask(c, 0x29, v?0x08:0x00, 0x08);
  if (rc < 0)
   goto out;

  rc = ov_write_mask(c, 0x0e, v?0x80:0x00, 0x80);
  s->backlight = v;
  break;
 }
 case 129:
  rc = ov_write_mask(c, 0x12, v?0x40:0x00, 0x40);
  s->mirror = v;
  break;
 default:
  DDEBUG(2, &c->dev, "control not supported: %d", ctl->id);
  return -EPERM;
 }

out:
 DDEBUG(3, &c->dev, "id=%d, arg=%d, rc=%d", ctl->id, v, rc);
 return rc;
}
