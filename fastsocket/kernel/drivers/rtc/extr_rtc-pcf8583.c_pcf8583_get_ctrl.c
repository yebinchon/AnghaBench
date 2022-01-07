
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 unsigned char get_ctrl (struct i2c_client*) ;

__attribute__((used)) static int pcf8583_get_ctrl(struct i2c_client *client, unsigned char *ctrl)
{
 *ctrl = get_ctrl(client);
 return 0;
}
