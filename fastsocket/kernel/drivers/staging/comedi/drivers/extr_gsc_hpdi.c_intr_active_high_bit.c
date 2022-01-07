
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t intr_active_high_bit(int interrupt_source)
{
 return 0x1 << interrupt_source;
}
