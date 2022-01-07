
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_header {int dummy; } ;


 int ACX_MEM_MAP ;
 int DEBUG_ACX ;
 int wl1251_cmd_interrogate (struct wl1251*,int ,struct acx_header*,size_t) ;
 int wl1251_debug (int ,char*) ;

int wl1251_acx_mem_map(struct wl1251 *wl, struct acx_header *mem_map,
         size_t len)
{
 int ret;

 wl1251_debug(DEBUG_ACX, "acx mem map");

 ret = wl1251_cmd_interrogate(wl, ACX_MEM_MAP, mem_map, len);
 if (ret < 0)
  return ret;

 return 0;
}
