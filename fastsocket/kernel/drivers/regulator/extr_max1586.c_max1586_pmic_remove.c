
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int MAX1586_V6 ;
 struct regulator_dev** i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct regulator_dev**) ;
 int regulator_unregister (struct regulator_dev*) ;

__attribute__((used)) static int max1586_pmic_remove(struct i2c_client *client)
{
 struct regulator_dev **rdev = i2c_get_clientdata(client);
 int i;

 for (i = 0; i <= MAX1586_V6; i++)
  if (rdev[i])
   regulator_unregister(rdev[i]);
 kfree(rdev);
 i2c_set_clientdata(client, ((void*)0));

 return 0;
}
