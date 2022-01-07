
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ cmd640_key ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static void put_cmd640_reg_vlb(u16 reg, u8 val)
{
 outb_p(reg, cmd640_key);
 outb_p(val, cmd640_key + 4);
}
