
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip {struct ov7x10* spriv; } ;
struct ov7x10 {int auto_brt; int auto_exp; } ;
struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 struct ov7x10* kzalloc (int,int ) ;
 int ov_write_regvals (struct i2c_client*,int ) ;
 int regvals_init_7x10 ;

__attribute__((used)) static int ov7x10_init(struct i2c_client *c)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 struct ov7x10 *s;
 int rc;

 DDEBUG(4, &c->dev, "entered");

 rc = ov_write_regvals(c, regvals_init_7x10);
 if (rc < 0)
  return rc;

 ov->spriv = s = kzalloc(sizeof *s, GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 s->auto_brt = 1;
 s->auto_exp = 1;

 return rc;
}
