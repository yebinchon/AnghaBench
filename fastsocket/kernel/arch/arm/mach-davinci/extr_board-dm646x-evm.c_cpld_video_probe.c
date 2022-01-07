
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct i2c_client* cpld_client ;

__attribute__((used)) static int cpld_video_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 cpld_client = client;
 return 0;
}
