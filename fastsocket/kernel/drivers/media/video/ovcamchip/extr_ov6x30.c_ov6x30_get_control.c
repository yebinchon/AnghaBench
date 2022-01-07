
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_control {int id; unsigned char value; } ;
struct ovcamchip {struct ov6x30* spriv; } ;
struct ov6x30 {unsigned char bandfilt; unsigned char auto_brt; unsigned char auto_exp; unsigned char backlight; unsigned char mirror; } ;
struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*,int,...) ;
 int EPERM ;
 int REG_BLUE ;
 int REG_BRT ;
 int REG_CNT ;
 int REG_EXP ;
 int REG_SAT ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov_read (struct i2c_client*,int ,unsigned char*) ;

__attribute__((used)) static int ov6x30_get_control(struct i2c_client *c,
         struct ovcamchip_control *ctl)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov6x30 *s = ov->spriv;
 int rc = 0;
 unsigned char val = 0;

 switch (ctl->id) {
 case 132:
  rc = ov_read(c, REG_CNT, &val);
  ctl->value = (val & 0x0f) << 12;
  break;
 case 133:
  rc = ov_read(c, REG_BRT, &val);
  ctl->value = val << 8;
  break;
 case 128:
  rc = ov_read(c, REG_SAT, &val);
  ctl->value = val << 8;
  break;
 case 130:
  rc = ov_read(c, REG_BLUE, &val);
  ctl->value = val << 8;
  break;
 case 131:
  rc = ov_read(c, REG_EXP, &val);
  ctl->value = val;
  break;
 case 134:
  ctl->value = s->bandfilt;
  break;
 case 137:
  ctl->value = s->auto_brt;
  break;
 case 136:
  ctl->value = s->auto_exp;
  break;
 case 135:
  ctl->value = s->backlight;
  break;
 case 129:
  ctl->value = s->mirror;
  break;
 default:
  DDEBUG(2, &c->dev, "control not supported: %d", ctl->id);
  return -EPERM;
 }

 DDEBUG(3, &c->dev, "id=%d, arg=%d, rc=%d", ctl->id, ctl->value, rc);
 return rc;
}
