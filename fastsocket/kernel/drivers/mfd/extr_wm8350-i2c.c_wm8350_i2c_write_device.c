
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wm8350 {int i2c_client; } ;


 int EINVAL ;
 int EIO ;
 int WM8350_MAX_REGISTER ;
 int i2c_master_send (int ,char*,int) ;
 int memcpy (char*,void*,int) ;

__attribute__((used)) static int wm8350_i2c_write_device(struct wm8350 *wm8350, char reg,
       int bytes, void *src)
{

 u8 msg[(WM8350_MAX_REGISTER << 1) + 1];
 int ret;

 if (bytes > ((WM8350_MAX_REGISTER << 1) + 1))
  return -EINVAL;

 msg[0] = reg;
 memcpy(&msg[1], src, bytes);
 ret = i2c_master_send(wm8350->i2c_client, msg, bytes + 1);
 if (ret < 0)
  return ret;
 if (ret != bytes + 1)
  return -EIO;
 return 0;
}
