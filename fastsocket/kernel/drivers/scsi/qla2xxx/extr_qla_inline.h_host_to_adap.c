
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void
host_to_adap(uint8_t *src, uint8_t *dst, uint32_t bsize)
{
 uint32_t *isrc = (uint32_t *) src;
 uint32_t *odest = (uint32_t *) dst;
 uint32_t iter = bsize >> 2;

 for (; iter ; iter--)
  *odest++ = cpu_to_le32(*isrc++);
}
