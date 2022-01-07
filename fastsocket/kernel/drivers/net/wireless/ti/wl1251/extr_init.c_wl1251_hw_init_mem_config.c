
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_acx_mem_map {int dummy; } ;
struct wl1251 {int * target_mem_map; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int wl1251_acx_mem_cfg (struct wl1251*) ;
 int wl1251_acx_mem_map (struct wl1251*,int *,int) ;
 int wl1251_error (char*) ;

int wl1251_hw_init_mem_config(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_acx_mem_cfg(wl);
 if (ret < 0)
  return ret;

 wl->target_mem_map = kzalloc(sizeof(struct wl1251_acx_mem_map),
       GFP_KERNEL);
 if (!wl->target_mem_map) {
  wl1251_error("couldn't allocate target memory map");
  return -ENOMEM;
 }


 ret = wl1251_acx_mem_map(wl, wl->target_mem_map,
     sizeof(struct wl1251_acx_mem_map));
 if (ret < 0) {
  wl1251_error("couldn't retrieve firmware memory map");
  kfree(wl->target_mem_map);
  wl->target_mem_map = ((void*)0);
  return ret;
 }

 return 0;
}
