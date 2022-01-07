
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int outw (int,int) ;

__attribute__((used)) static inline void TLan_DioWrite16(u16 base_addr, u16 internal_addr, u16 data)
{
 outw(internal_addr, base_addr + TLAN_DIO_ADR);
 outw(data, base_addr + TLAN_DIO_DATA + (internal_addr & 0x2));

}
