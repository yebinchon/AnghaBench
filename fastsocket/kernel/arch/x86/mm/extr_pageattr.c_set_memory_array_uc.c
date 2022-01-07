
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGE_CACHE_UC_MINUS ;
 int _set_memory_array (unsigned long*,int,int ) ;

int set_memory_array_uc(unsigned long *addr, int addrinarray)
{
 return _set_memory_array(addr, addrinarray, _PAGE_CACHE_UC_MINUS);
}
