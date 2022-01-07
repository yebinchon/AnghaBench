
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int TPACPI_RFK_RADIO_OFF ;
 int hotkey_get_wlsw () ;
 int snprintf (char*,int ,char*,int) ;
 int tpacpi_rfk_update_hwblock_state (int) ;

__attribute__((used)) static ssize_t hotkey_radio_sw_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int res;
 res = hotkey_get_wlsw();
 if (res < 0)
  return res;


 tpacpi_rfk_update_hwblock_state((res == TPACPI_RFK_RADIO_OFF));

 return snprintf(buf, PAGE_SIZE, "%d\n",
   (res == TPACPI_RFK_RADIO_OFF) ? 0 : 1);
}
