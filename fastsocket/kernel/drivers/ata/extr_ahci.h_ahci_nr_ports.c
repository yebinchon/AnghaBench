
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int ahci_nr_ports(u32 cap)
{
 return (cap & 0x1f) + 1;
}
