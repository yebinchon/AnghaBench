
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wl1251 {int dummy; } ;
struct acx_tsf_info {int current_tsf_lsb; scalar_t__ current_tsf_msb; } ;


 int ACX_TSF_INFO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_tsf_info*) ;
 struct acx_tsf_info* kzalloc (int,int ) ;
 int wl1251_cmd_interrogate (struct wl1251*,int ,struct acx_tsf_info*,int) ;
 int wl1251_warning (char*) ;

int wl1251_acx_tsf_info(struct wl1251 *wl, u64 *mactime)
{
 struct acx_tsf_info *tsf_info;
 int ret;

 tsf_info = kzalloc(sizeof(*tsf_info), GFP_KERNEL);
 if (!tsf_info) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl1251_cmd_interrogate(wl, ACX_TSF_INFO,
         tsf_info, sizeof(*tsf_info));
 if (ret < 0) {
  wl1251_warning("ACX_FW_REV interrogate failed");
  goto out;
 }

 *mactime = tsf_info->current_tsf_lsb |
  ((u64)tsf_info->current_tsf_msb << 32);

out:
 kfree(tsf_info);
 return ret;
}
