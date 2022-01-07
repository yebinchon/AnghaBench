
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* memcpy (int *,int const*,size_t) ;

__attribute__((used)) static __inline__ void *memcpy_le32(u32 *dest, const u32 *src, size_t count)
{
 return memcpy(dest, src, count);
}
