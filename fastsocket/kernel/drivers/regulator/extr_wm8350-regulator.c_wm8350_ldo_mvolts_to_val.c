
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int wm8350_ldo_mvolts_to_val(int mV)
{
 if (mV < 1800)
  return (mV - 900) / 50;
 else
  return ((mV - 1800) / 100) + 16;
}
