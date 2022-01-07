
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int msp_debug ;
 int msp_wake_thread (struct i2c_client*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*) ;

__attribute__((used)) static int msp_resume(struct i2c_client *client)
{
 v4l_dbg(1, msp_debug, client, "resume\n");
 msp_wake_thread(client);
 return 0;
}
