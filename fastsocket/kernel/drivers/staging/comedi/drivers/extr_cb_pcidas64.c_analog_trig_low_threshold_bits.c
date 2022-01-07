
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t analog_trig_low_threshold_bits(uint16_t threshold)
{
 return threshold & 0xfff;
}
