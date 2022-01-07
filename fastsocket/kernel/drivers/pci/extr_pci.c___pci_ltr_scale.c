
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int __pci_ltr_scale(int *val)
{
 int scale = 0;

 while (*val > 1023) {
  *val = (*val + 31) / 32;
  scale++;
 }
 return scale;
}
