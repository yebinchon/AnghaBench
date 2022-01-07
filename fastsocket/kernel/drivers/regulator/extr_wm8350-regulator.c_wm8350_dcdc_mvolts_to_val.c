
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int wm8350_dcdc_mvolts_to_val(int mV)
{
 return (mV - 850) / 25;
}
