
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_USEC_SHIFT ;

__attribute__((used)) static inline unsigned long
timer_mask_usec_ticks(unsigned long scaler, unsigned long pclk)
{
 unsigned long den = pclk / 1000;

 return ((1000 << TIMER_USEC_SHIFT) * scaler + (den >> 1)) / den;
}
