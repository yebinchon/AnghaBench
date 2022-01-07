
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



unsigned int fifo_words(uint32_t fifo_words_bits)
{
 return fifo_words_bits & 0xfffff;
}
