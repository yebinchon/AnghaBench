
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_LOW (char*,unsigned long) ;

__attribute__((used)) static long beat_lpar_hpte_remove(unsigned long hpte_group)
{
 DBG_LOW("hpte_remove(group=%lx)\n", hpte_group);
 return -1;
}
