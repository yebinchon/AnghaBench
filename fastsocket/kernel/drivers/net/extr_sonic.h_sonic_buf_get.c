
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile __u16 ;



__attribute__((used)) static inline __u16 sonic_buf_get(void* base, int bitmode,
      int offset)
{
 if (bitmode)



  return ((volatile __u16 *) base + (offset*2))[0];

 else
  return ((volatile __u16 *) base)[offset];
}
