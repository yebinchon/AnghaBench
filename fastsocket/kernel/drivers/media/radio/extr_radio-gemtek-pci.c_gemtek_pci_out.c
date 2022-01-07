
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int outw (int ,int ) ;

__attribute__((used)) static inline u8 gemtek_pci_out(u16 value, u32 port)
{
 outw(value, port);

 return (u8)value;
}
