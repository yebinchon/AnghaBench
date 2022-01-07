
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EINVAL ;
 int cx25840_read (struct i2c_client*,int) ;
 int get_fw_name (struct i2c_client*) ;
 int v4l_err (struct i2c_client*,char*,int ) ;
 int v4l_info (struct i2c_client*,char*,int ,int) ;

__attribute__((used)) static int check_fw_load(struct i2c_client *client, int size)
{

 int s = cx25840_read(client, 0x801) << 8;
 s |= cx25840_read(client, 0x800);

 if (size != s) {
  v4l_err(client, "firmware %s load failed\n",
    get_fw_name(client));
  return -EINVAL;
 }

 v4l_info(client, "loaded %s firmware (%d bytes)\n",
   get_fw_name(client), size);
 return 0;
}
