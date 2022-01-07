
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 int inl (scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 TLan_DioRead32(u16 base_addr, u16 internal_addr)
{
 outw(internal_addr, base_addr + TLAN_DIO_ADR);
 return (inl(base_addr + TLAN_DIO_DATA));

}
