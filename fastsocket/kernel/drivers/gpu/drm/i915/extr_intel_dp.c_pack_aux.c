
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
pack_aux(uint8_t *src, int src_bytes)
{
 int i;
 uint32_t v = 0;

 if (src_bytes > 4)
  src_bytes = 4;
 for (i = 0; i < src_bytes; i++)
  v |= ((uint32_t) src[i]) << ((3-i) * 8);
 return v;
}
