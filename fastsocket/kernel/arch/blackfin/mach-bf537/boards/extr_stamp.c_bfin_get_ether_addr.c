
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 scalar_t__ FLASH_MAC ;
 int bfin_read16 (scalar_t__) ;
 int bfin_read32 (scalar_t__) ;

void bfin_get_ether_addr(char *addr)
{
 *(u32 *)(&(addr[0])) = bfin_read32(FLASH_MAC);
 *(u16 *)(&(addr[4])) = bfin_read16(FLASH_MAC + 4);
}
