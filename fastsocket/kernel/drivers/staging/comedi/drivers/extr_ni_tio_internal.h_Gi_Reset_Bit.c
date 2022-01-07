
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned Gi_Reset_Bit(unsigned counter_index)
{
 return 0x1 << (2 + (counter_index % 2));
}
