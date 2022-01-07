
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int ELPCTRL_WAKE_UP ;
 int HW_ACCESS_ELP_CTRL_REG ;
 int wlcore_raw_write32 (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wlcore_fw_wakeup(struct wl1271 *wl)
{
 return wlcore_raw_write32(wl, HW_ACCESS_ELP_CTRL_REG, ELPCTRL_WAKE_UP);
}
