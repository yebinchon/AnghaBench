
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int i2c_client; } ;


 int EIO ;
 int i2c_master_recv (int ,void*,int) ;
 int i2c_master_send (int ,char*,int) ;

__attribute__((used)) static int wm8350_i2c_read_device(struct wm8350 *wm8350, char reg,
      int bytes, void *dest)
{
 int ret;

 ret = i2c_master_send(wm8350->i2c_client, &reg, 1);
 if (ret < 0)
  return ret;
 ret = i2c_master_recv(wm8350->i2c_client, dest, bytes);
 if (ret < 0)
  return ret;
 if (ret != bytes)
  return -EIO;
 return 0;
}
