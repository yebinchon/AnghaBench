
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int l1_data_A_sram_free (void const*) ;
 int l1_data_B_sram_free (void const*) ;

int l1_data_sram_free(const void *addr)
{
 int ret;
 ret = l1_data_A_sram_free(addr);
 if (ret == -1)
  ret = l1_data_B_sram_free(addr);
 return ret;
}
