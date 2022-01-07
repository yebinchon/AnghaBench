
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



uint32_t almost_empty_bits(unsigned int num_words)
{
 return num_words & 0xffff;
}
