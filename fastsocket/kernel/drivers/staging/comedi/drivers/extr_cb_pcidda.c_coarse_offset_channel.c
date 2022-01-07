
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int coarse_offset_channel(unsigned int ao_channel)
{
 return 2 + 4 * (ao_channel % 2);
}
