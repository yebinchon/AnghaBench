
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* l1_data_A_sram_alloc (size_t) ;
 void* l1_data_B_sram_alloc (size_t) ;

void *l1_data_sram_alloc(size_t size)
{
 void *addr = l1_data_A_sram_alloc(size);

 if (!addr)
  addr = l1_data_B_sram_alloc(size);

 return addr;
}
