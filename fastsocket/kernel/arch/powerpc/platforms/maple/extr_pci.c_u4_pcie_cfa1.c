
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int u4_pcie_cfa1(unsigned int bus, unsigned int devfn,
     unsigned int off)
{
        return (bus << 16) |
        (devfn << 8) |
        ((off >> 8) << 28) |
        (off & 0xfcu) | 1u;
}
