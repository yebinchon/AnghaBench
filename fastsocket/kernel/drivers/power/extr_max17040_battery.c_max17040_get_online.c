
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max17040_chip {int online; TYPE_1__* pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* battery_online ) () ;} ;


 struct max17040_chip* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 () ;

__attribute__((used)) static void max17040_get_online(struct i2c_client *client)
{
 struct max17040_chip *chip = i2c_get_clientdata(client);

 if (chip->pdata->battery_online)
  chip->online = chip->pdata->battery_online();
 else
  chip->online = 1;
}
