
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct f71882fg_data {scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void f71882fg_write16(struct f71882fg_data *data, u8 reg, u16 val)
{
 outb(reg++, data->addr + ADDR_REG_OFFSET);
 outb(val >> 8, data->addr + DATA_REG_OFFSET);
 outb(reg, data->addr + ADDR_REG_OFFSET);
 outb(val & 255, data->addr + DATA_REG_OFFSET);
}
