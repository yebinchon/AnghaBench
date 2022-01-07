
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PCNET32_WIO_BDP ;
 scalar_t__ PCNET32_WIO_RAP ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void pcnet32_wio_write_bcr(unsigned long addr, int index, u16 val)
{
 outw(index, addr + PCNET32_WIO_RAP);
 outw(val, addr + PCNET32_WIO_BDP);
}
