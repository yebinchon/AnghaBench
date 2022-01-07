
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ACNTL1 ;
 int SRESET ;
 int msleep (int) ;
 int tw9910_mask_set (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static void tw9910_reset(struct i2c_client *client)
{
 tw9910_mask_set(client, ACNTL1, SRESET, SRESET);
 msleep(1);
}
