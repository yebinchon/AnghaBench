
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int physical_mem_addr; int virtual_mem_addr; } ;



__attribute__((used)) static int wl1251_translate_mem_addr(struct wl1251 *wl, int addr)
{
 return addr - wl->physical_mem_addr + wl->virtual_mem_addr;
}
