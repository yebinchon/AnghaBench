
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



uint32_t tx_clock_divisor_bits(unsigned int divisor)
{
 return divisor & 0xff;
}
