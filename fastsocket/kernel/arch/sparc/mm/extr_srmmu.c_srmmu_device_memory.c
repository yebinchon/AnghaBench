
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int srmmu_device_memory(unsigned long x)
{
 return ((x & 0xF0000000) != 0);
}
