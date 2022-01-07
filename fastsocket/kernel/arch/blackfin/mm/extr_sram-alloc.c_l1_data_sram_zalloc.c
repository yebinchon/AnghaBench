
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* l1_data_sram_alloc (size_t) ;
 int memset (void*,int,size_t) ;

void *l1_data_sram_zalloc(size_t size)
{
 void *addr = l1_data_sram_alloc(size);

 if (addr)
  memset(addr, 0x00, size);

 return addr;
}
