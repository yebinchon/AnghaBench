
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271_static_data {int fw_version; } ;
struct TYPE_2__ {char* fw_ver_str; int * fw_ver; } ;
struct wl1271 {TYPE_1__ chip; } ;


 int EINVAL ;
 int memset (int *,int ,int) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *) ;
 int strncpy (char*,int ,int) ;
 int wl1271_warning (char*) ;
 int wlcore_identify_fw (struct wl1271*) ;

__attribute__((used)) static int wlcore_boot_parse_fw_ver(struct wl1271 *wl,
        struct wl1271_static_data *static_data)
{
 int ret;

 strncpy(wl->chip.fw_ver_str, static_data->fw_version,
  sizeof(wl->chip.fw_ver_str));


 wl->chip.fw_ver_str[sizeof(wl->chip.fw_ver_str) - 1] = '\0';

 ret = sscanf(wl->chip.fw_ver_str + 4, "%u.%u.%u.%u.%u",
       &wl->chip.fw_ver[0], &wl->chip.fw_ver[1],
       &wl->chip.fw_ver[2], &wl->chip.fw_ver[3],
       &wl->chip.fw_ver[4]);

 if (ret != 5) {
  wl1271_warning("fw version incorrect value");
  memset(wl->chip.fw_ver, 0, sizeof(wl->chip.fw_ver));
  ret = -EINVAL;
  goto out;
 }

 ret = wlcore_identify_fw(wl);
 if (ret < 0)
  goto out;
out:
 return ret;
}
