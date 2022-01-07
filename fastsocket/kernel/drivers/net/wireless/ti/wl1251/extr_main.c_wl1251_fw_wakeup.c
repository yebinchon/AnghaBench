
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int ELPCTRL_WAKE_UP ;
 int ELPCTRL_WLAN_READY ;
 int HW_ACCESS_ELP_CTRL_REG_ADDR ;
 int wl1251_read_elp (struct wl1251*,int ) ;
 int wl1251_warning (char*) ;
 int wl1251_write_elp (struct wl1251*,int ,int) ;

__attribute__((used)) static void wl1251_fw_wakeup(struct wl1251 *wl)
{
 u32 elp_reg;

 elp_reg = ELPCTRL_WAKE_UP;
 wl1251_write_elp(wl, HW_ACCESS_ELP_CTRL_REG_ADDR, elp_reg);
 elp_reg = wl1251_read_elp(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);

 if (!(elp_reg & ELPCTRL_WLAN_READY))
  wl1251_warning("WLAN not ready");
}
