
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_control {int value; int id; } ;
struct ovcamchip {struct ov76be* spriv; } ;
struct ov76be {int bandfilt; int auto_brt; int auto_exp; int mirror; } ;
struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*,int,...) ;
 int EPERM ;
 int REG_BRT ;
 int REG_EXP ;
 int REG_SAT ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov_write (struct i2c_client*,int,int) ;
 int ov_write_mask (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ov76be_set_control(struct i2c_client *c,
         struct ovcamchip_control *ctl)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov76be *s = ov->spriv;
 int rc;
 int v = ctl->value;

 switch (ctl->id) {
 case 132:
  rc = ov_write(c, REG_BRT, v >> 8);
  break;
 case 128:
  rc = ov_write(c, REG_SAT, v >> 8);
  break;
 case 131:
  rc = ov_write(c, REG_EXP, v);
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
 case 133:
  rc = ov_write_mask(c, 0x2d, v?0x04:0x00, 0x04);
  s->bandfilt = v;
  break;
 case 135:
  rc = ov_write_mask(c, 0x2d, v?0x10:0x00, 0x10);
  s->auto_brt = v;
  break;
 case 134:
  rc = ov_write_mask(c, 0x13, v?0x01:0x00, 0x01);
  s->auto_exp = v;
  break;
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
