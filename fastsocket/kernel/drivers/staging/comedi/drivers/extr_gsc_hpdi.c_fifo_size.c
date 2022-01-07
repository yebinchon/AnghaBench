
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



unsigned int fifo_size(uint32_t fifo_size_bits)
{
 return fifo_size_bits & 0xfffff;
}
