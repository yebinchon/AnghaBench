
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int wl1251_translate_mem_addr (struct wl1251*,int) ;
 int wl1251_write32 (struct wl1251*,int ,int ) ;

void wl1251_mem_write32(struct wl1251 *wl, int addr, u32 val)
{
 wl1251_write32(wl, wl1251_translate_mem_addr(wl, addr), val);
}
