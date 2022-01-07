
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int bfin_mem_access_type (unsigned long,int) ;

__attribute__((used)) static int validate_memory_access_address(unsigned long addr, int size)
{
 if (size < 0 || addr == 0)
  return -EFAULT;
 return bfin_mem_access_type(addr, size);
}
