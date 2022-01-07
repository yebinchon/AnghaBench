
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip {int spriv; } ;
struct i2c_client {int dummy; } ;


 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;

__attribute__((used)) static int ov76be_free(struct i2c_client *c)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);

 kfree(ov->spriv);
 return 0;
}
