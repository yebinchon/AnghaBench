
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int apanel_remove (struct i2c_client*) ;

__attribute__((used)) static void apanel_shutdown(struct i2c_client *client)
{
 apanel_remove(client);
}
