
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
 int wm8350_read (struct wm8350*,int,int,int *) ;

u16 wm8350_reg_read(struct wm8350 *wm8350, int reg)
{
 u16 data;
 int err;

 mutex_lock(&io_mutex);
 err = wm8350_read(wm8350, reg, 1, &data);
 if (err)
  dev_err(wm8350->dev, "read from reg R%d failed\n", reg);

 mutex_unlock(&io_mutex);
 return data;
}
