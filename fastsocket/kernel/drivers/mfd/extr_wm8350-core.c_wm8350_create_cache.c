
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8350 {int (* read_dev ) (struct wm8350*,int ,int,int *) ;int * reg_cache; int dev; } ;
struct TYPE_2__ {int readable; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WM8350_AIF_TEST ;
 int WM8350_CLOCK_CONTROL_1 ;
 int WM8350_MAX_REGISTER ;
 int be16_to_cpu (int ) ;
 int dev_err (int ,char*,...) ;
 int * kmalloc (int,int ) ;
 int stub1 (struct wm8350*,int ,int,int *) ;
 int * wm8350_mode0_defaults ;
 int * wm8350_mode1_defaults ;
 int * wm8350_mode2_defaults ;
 int * wm8350_mode3_defaults ;
 TYPE_1__* wm8350_reg_io_map ;
 int * wm8351_mode0_defaults ;
 int * wm8351_mode1_defaults ;
 int * wm8351_mode2_defaults ;
 int * wm8351_mode3_defaults ;
 int * wm8352_mode0_defaults ;
 int * wm8352_mode1_defaults ;
 int * wm8352_mode2_defaults ;
 int * wm8352_mode3_defaults ;

__attribute__((used)) static int wm8350_create_cache(struct wm8350 *wm8350, int type, int mode)
{
 int i, ret = 0;
 u16 value;
 const u16 *reg_map;

 switch (type) {
 case 0:
  switch (mode) {
  default:
   dev_err(wm8350->dev,
    "WM8350 configuration mode %d not supported\n",
    mode);
   return -EINVAL;
  }
  break;

 case 1:
  switch (mode) {
  default:
   dev_err(wm8350->dev,
    "WM8351 configuration mode %d not supported\n",
    mode);
   return -EINVAL;
  }
  break;

 case 2:
  switch (mode) {
  default:
   dev_err(wm8350->dev,
    "WM8352 configuration mode %d not supported\n",
    mode);
   return -EINVAL;
  }
  break;

 default:
  dev_err(wm8350->dev,
   "WM835x configuration mode %d not supported\n",
   mode);
  return -EINVAL;
 }

 wm8350->reg_cache =
  kmalloc(sizeof(u16) * (WM8350_MAX_REGISTER + 1), GFP_KERNEL);
 if (wm8350->reg_cache == ((void*)0))
  return -ENOMEM;





 ret = wm8350->read_dev(wm8350, 0,
          sizeof(u16) * (WM8350_MAX_REGISTER + 1),
          wm8350->reg_cache);
 if (ret < 0) {
  dev_err(wm8350->dev,
   "failed to read initial cache values\n");
  goto out;
 }


 for (i = 0; i < WM8350_MAX_REGISTER; i++) {
  if (wm8350_reg_io_map[i].readable &&
      (i < WM8350_CLOCK_CONTROL_1 || i > WM8350_AIF_TEST)) {
   value = be16_to_cpu(wm8350->reg_cache[i]);
   value &= wm8350_reg_io_map[i].readable;
   wm8350->reg_cache[i] = value;
  } else
   wm8350->reg_cache[i] = reg_map[i];
 }

out:
 return ret;
}
