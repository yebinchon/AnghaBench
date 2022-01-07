
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int wl1251_read32 (struct wl1251*,int ) ;
 int wl1251_translate_mem_addr (struct wl1251*,int) ;

u32 wl1251_mem_read32(struct wl1251 *wl, int addr)
{
 return wl1251_read32(wl, wl1251_translate_mem_addr(wl, addr));
}
