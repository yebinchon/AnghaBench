
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; } ;


 int dev_err (int ,char*,int) ;
 int io_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8350_write (struct wm8350*,int,int,int *) ;

int wm8350_reg_write(struct wm8350 *wm8350, int reg, u16 val)
{
 int ret;
 u16 data = val;

 mutex_lock(&io_mutex);
 ret = wm8350_write(wm8350, reg, 1, &data);
 if (ret)
  dev_err(wm8350->dev, "write to reg R%d failed\n", reg);
 mutex_unlock(&io_mutex);
 return ret;
}
