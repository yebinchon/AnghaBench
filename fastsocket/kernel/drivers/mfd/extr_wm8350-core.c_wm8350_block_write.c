
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

int wm8350_block_write(struct wm8350 *wm8350, int start_reg, int regs,
         u16 *src)
{
 int ret = 0;

 mutex_lock(&io_mutex);
 ret = wm8350_write(wm8350, start_reg, regs, src);
 if (ret)
  dev_err(wm8350->dev, "block write starting at R%d failed\n",
   start_reg);
 mutex_unlock(&io_mutex);
 return ret;
}
