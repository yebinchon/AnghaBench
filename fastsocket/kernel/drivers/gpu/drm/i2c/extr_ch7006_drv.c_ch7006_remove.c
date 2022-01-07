
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ch7006_dbg (struct i2c_client*,char*) ;

__attribute__((used)) static int ch7006_remove(struct i2c_client *client)
{
 ch7006_dbg(client, "\n");

 return 0;
}
