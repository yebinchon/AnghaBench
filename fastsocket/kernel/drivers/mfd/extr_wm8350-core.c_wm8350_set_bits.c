
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; } ;


 int dev_err (int ,char*,int ) ;
 int io_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8350_read (struct wm8350*,int ,int,int *) ;
 int wm8350_write (struct wm8350*,int ,int,int *) ;

int wm8350_set_bits(struct wm8350 *wm8350, u16 reg, u16 mask)
{
 u16 data;
 int err;

 mutex_lock(&io_mutex);
 err = wm8350_read(wm8350, reg, 1, &data);
 if (err) {
  dev_err(wm8350->dev, "read from reg R%d failed\n", reg);
  goto out;
 }

 data |= mask;
 err = wm8350_write(wm8350, reg, 1, &data);
 if (err)
  dev_err(wm8350->dev, "write to reg R%d failed\n", reg);
out:
 mutex_unlock(&io_mutex);
 return err;
}
