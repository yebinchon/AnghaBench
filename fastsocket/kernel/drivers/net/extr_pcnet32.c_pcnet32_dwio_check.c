
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCNET32_DWIO_RAP ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int pcnet32_dwio_check(unsigned long addr)
{
 outl(88, addr + PCNET32_DWIO_RAP);
 return ((inl(addr + PCNET32_DWIO_RAP) & 0xffff) == 88);
}
