
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int size_dst(unsigned int src, unsigned int scale)
{
 unsigned int mant_pre = scale >> 12;
 if (!src || !scale)
  return src;
 return ((mant_pre + 2 * (src - 1)) / (2 * mant_pre) - 1) *
  mant_pre * 4096 / scale + 1;
}
