
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t getle32(const void *p)
{
 const uint8_t *cp = p;

 return (uint32_t)cp[0] + ((uint32_t)cp[1] << 8) +
  ((uint32_t)cp[2] << 16) + ((uint32_t)cp[3] << 24);
}
