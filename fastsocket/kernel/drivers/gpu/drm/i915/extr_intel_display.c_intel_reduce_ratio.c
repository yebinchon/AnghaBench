
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
intel_reduce_ratio(uint32_t *num, uint32_t *den)
{
 while (*num > 0xffffff || *den > 0xffffff) {
  *num >>= 1;
  *den >>= 1;
 }
}
