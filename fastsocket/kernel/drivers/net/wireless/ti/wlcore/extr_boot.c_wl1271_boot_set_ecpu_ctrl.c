
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;


 int REG_ECPU_CONTROL ;
 int wlcore_read_reg (struct wl1271*,int ,int *) ;
 int wlcore_write_reg (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wl1271_boot_set_ecpu_ctrl(struct wl1271 *wl, u32 flag)
{
 u32 cpu_ctrl;
 int ret;


 ret = wlcore_read_reg(wl, REG_ECPU_CONTROL, &cpu_ctrl);
 if (ret < 0)
  goto out;


 cpu_ctrl |= flag;
 ret = wlcore_write_reg(wl, REG_ECPU_CONTROL, cpu_ctrl);

out:
 return ret;
}
