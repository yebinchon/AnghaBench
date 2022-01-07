
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ov7x20_lut_find(unsigned char lut[], int n, unsigned char val)
{
 int i = 0;

 while (lut[i] < val && i < n)
  i++;

 return i;
}
