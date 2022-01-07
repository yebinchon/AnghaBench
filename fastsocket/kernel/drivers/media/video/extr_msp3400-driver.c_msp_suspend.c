
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef int pm_message_t ;


 int msp_debug ;
 int msp_reset (struct i2c_client*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*) ;

__attribute__((used)) static int msp_suspend(struct i2c_client *client, pm_message_t state)
{
 v4l_dbg(1, msp_debug, client, "suspend\n");
 msp_reset(client);
 return 0;
}
