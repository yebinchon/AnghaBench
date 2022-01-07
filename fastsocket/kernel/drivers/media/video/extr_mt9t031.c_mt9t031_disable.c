
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MT9T031_OUTPUT_CONTROL ;
 int reg_clear (struct i2c_client*,int ,int) ;

__attribute__((used)) static int mt9t031_disable(struct i2c_client *client)
{

 reg_clear(client, MT9T031_OUTPUT_CONTROL, 2);

 return 0;
}
