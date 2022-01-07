
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCNET32_DWIO_RESET ;
 int inl (scalar_t__) ;

__attribute__((used)) static void pcnet32_dwio_reset(unsigned long addr)
{
 inl(addr + PCNET32_DWIO_RESET);
}
