
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

int wm8350_block_read(struct wm8350 *wm8350, int start_reg, int regs,
        u16 *dest)
{
 int err = 0;

 mutex_lock(&io_mutex);
 err = wm8350_read(wm8350, start_reg, regs, dest);
 if (err)
  dev_err(wm8350->dev, "block read starting from R%d failed\n",
   start_reg);
 mutex_unlock(&io_mutex);
 return err;
}
