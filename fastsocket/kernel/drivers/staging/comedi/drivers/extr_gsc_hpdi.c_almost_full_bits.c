
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



uint32_t almost_full_bits(unsigned int num_words)
{

 return (num_words << 16) & 0xff0000;
}
