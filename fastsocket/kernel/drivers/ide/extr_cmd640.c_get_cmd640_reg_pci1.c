
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int cmd640_key ;
 int inb_p (int) ;
 int outl_p (int,int) ;

__attribute__((used)) static u8 get_cmd640_reg_pci1(u16 reg)
{
 outl_p((reg & 0xfc) | cmd640_key, 0xcf8);
 return inb_p((reg & 3) | 0xcfc);
}
