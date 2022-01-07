
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TO_KERNEL ;
 int memcpy_hsa (void*,unsigned long,size_t,int ) ;

__attribute__((used)) static int memcpy_hsa_kernel(void *dest, unsigned long src, size_t count)
{
 return memcpy_hsa(dest, src, count, TO_KERNEL);
}
