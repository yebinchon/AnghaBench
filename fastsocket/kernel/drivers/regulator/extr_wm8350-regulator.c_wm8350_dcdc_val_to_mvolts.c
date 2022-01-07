
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int wm8350_dcdc_val_to_mvolts(unsigned int val)
{
 return (val * 25) + 850;
}
