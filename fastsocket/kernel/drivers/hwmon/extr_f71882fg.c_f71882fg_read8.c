
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct f71882fg_data {scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static u8 f71882fg_read8(struct f71882fg_data *data, u8 reg)
{
 u8 val;

 outb(reg, data->addr + ADDR_REG_OFFSET);
 val = inb(data->addr + DATA_REG_OFFSET);

 return val;
}
