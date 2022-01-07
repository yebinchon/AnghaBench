
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccdc_addr_size ;
 void* ccdc_base_addr ;

__attribute__((used)) static void ccdc_set_ccdc_base(void *addr, int size)
{
 ccdc_base_addr = addr;
 ccdc_addr_size = size;
}
