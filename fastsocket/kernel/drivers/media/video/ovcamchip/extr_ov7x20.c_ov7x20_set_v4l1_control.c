
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_control {int value; int id; } ;
struct ovcamchip {struct ov7x20* spriv; } ;
struct ov7x20 {int auto_brt; int auto_exp; int bandfilt; int backlight; int mirror; } ;
struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*,int,...) ;
 int EBUSY ;
 int EPERM ;
 int REG_BRT ;
 int REG_EXP ;
 int REG_SAT ;
 int* ctab ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov_write (struct i2c_client*,int,int) ;
 int ov_write_mask (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ov7x20_set_v4l1_control(struct i2c_client *c,
       struct ovcamchip_control *ctl)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov7x20 *s = ov->spriv;
 int rc;
 int v = ctl->value;

 switch (ctl->id) {
 case 132:
 {

  rc = ov_write(c, 0x64, ctab[v >> 12]);
  break;
 }
 case 133:

  if (!s->auto_brt)
   rc = ov_write(c, REG_BRT, v >> 8);
  else
   rc = 0;
  break;
 case 128:
  rc = ov_write(c, REG_SAT, v >> 8);
  break;
 case 131:
  if (!s->auto_exp)
   rc = ov_write(c, REG_EXP, v);
  else
   rc = -EBUSY;
  break;
 case 130:
 {
  int sixty = (v == 60);

  rc = ov_write_mask(c, 0x2a, sixty?0x00:0x80, 0x80);
  if (rc < 0)
   goto out;

  rc = ov_write(c, 0x2b, sixty?0x00:0xac);
  if (rc < 0)
   goto out;

  rc = ov_write_mask(c, 0x76, 0x01, 0x01);
  break;
 }
 case 134:
  rc = ov_write_mask(c, 0x2d, v?0x04:0x00, 0x04);
  s->bandfilt = v;
  break;
 case 137:
  rc = ov_write_mask(c, 0x2d, v?0x10:0x00, 0x10);
  s->auto_brt = v;
  break;
 case 136:
  rc = ov_write_mask(c, 0x13, v?0x01:0x00, 0x01);
  s->auto_exp = v;
  break;
 case 135:
 {
  rc = ov_write_mask(c, 0x68, v?0xe0:0xc0, 0xe0);
  if (rc < 0)
   goto out;

  rc = ov_write_mask(c, 0x29, v?0x08:0x00, 0x08);
  if (rc < 0)
   goto out;

  rc = ov_write_mask(c, 0x28, v?0x02:0x00, 0x02);
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
