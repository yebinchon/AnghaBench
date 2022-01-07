
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovcamchip {struct ov6x20* spriv; } ;
struct ov6x20 {int auto_brt; int auto_exp; } ;
struct i2c_client {int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int id; } ;


 int DDEBUG (int,int *,char*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int dev_err (int *,char*) ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 struct ov6x20* kzalloc (int,int ) ;
 int ov_write_regvals (struct i2c_client*,int ) ;
 int regvals_init_6x20_511 ;
 int regvals_init_6x20_518 ;

__attribute__((used)) static int ov6x20_init(struct i2c_client *c)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov6x20 *s;
 int rc;

 DDEBUG(4, &c->dev, "entered");

 switch (c->adapter->id) {
 case 129:
  rc = ov_write_regvals(c, regvals_init_6x20_511);
  break;
 case 128:
  rc = ov_write_regvals(c, regvals_init_6x20_518);
  break;
 default:
  dev_err(&c->dev, "ov6x20: Unsupported adapter\n");
  rc = -ENODEV;
 }

 if (rc < 0)
  return rc;

 ov->spriv = s = kzalloc(sizeof *s, GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 s->auto_brt = 1;
 s->auto_exp = 1;

 return rc;
}
