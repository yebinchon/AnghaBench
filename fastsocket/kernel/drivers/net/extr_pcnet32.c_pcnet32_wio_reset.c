
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCNET32_WIO_RESET ;
 int inw (scalar_t__) ;

__attribute__((used)) static void pcnet32_wio_reset(unsigned long addr)
{
 inw(addr + PCNET32_WIO_RESET);
}
