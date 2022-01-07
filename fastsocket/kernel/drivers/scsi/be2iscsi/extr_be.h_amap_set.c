
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void amap_set(void *ptr, u32 dw_offset, u32 mask,
     u32 offset, u32 value)
{
 u32 *dw = (u32 *) ptr + dw_offset;
 *dw &= ~(mask << offset);
 *dw |= (mask & value) << offset;
}
