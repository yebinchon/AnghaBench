
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PCNET32_WIO_RAP ;
 int inw (scalar_t__) ;

__attribute__((used)) static u16 pcnet32_wio_read_rap(unsigned long addr)
{
 return inw(addr + PCNET32_WIO_RAP);
}
