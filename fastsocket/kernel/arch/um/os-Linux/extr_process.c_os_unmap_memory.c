
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int munmap (void*,int) ;

int os_unmap_memory(void *addr, int len)
{
 int err;

 err = munmap(addr, len);
 if (err < 0)
  return -errno;
 return 0;
}
