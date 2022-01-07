
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



unsigned int almost_full_num_words(uint32_t bits)
{

 return (bits >> 16) & 0xffff;
}
