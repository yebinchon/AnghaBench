
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int wm8350_ldo_val_to_mvolts(unsigned int val)
{
 if (val < 16)
  return (val * 50) + 900;
 else
  return ((val - 16) * 100) + 1800;

}
