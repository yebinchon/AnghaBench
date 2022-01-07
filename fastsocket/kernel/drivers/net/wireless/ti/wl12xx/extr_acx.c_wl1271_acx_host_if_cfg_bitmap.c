
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271_acx_host_config_bitmap {int host_cfg_bitmap; } ;
struct wl1271 {int dummy; } ;


 int ACX_HOST_IF_CFG_BITMAP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_host_config_bitmap*) ;
 struct wl1271_acx_host_config_bitmap* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_host_config_bitmap*,int) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_host_if_cfg_bitmap(struct wl1271 *wl, u32 host_cfg_bitmap)
{
 struct wl1271_acx_host_config_bitmap *bitmap_conf;
 int ret;

 bitmap_conf = kzalloc(sizeof(*bitmap_conf), GFP_KERNEL);
 if (!bitmap_conf) {
  ret = -ENOMEM;
  goto out;
 }

 bitmap_conf->host_cfg_bitmap = cpu_to_le32(host_cfg_bitmap);

 ret = wl1271_cmd_configure(wl, ACX_HOST_IF_CFG_BITMAP,
       bitmap_conf, sizeof(*bitmap_conf));
 if (ret < 0) {
  wl1271_warning("wl1271 bitmap config opt failed: %d", ret);
  goto out;
 }

out:
 kfree(bitmap_conf);

 return ret;
}
