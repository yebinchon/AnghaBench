
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {scalar_t__ mmio; } ;


 int dbg_reg (char*,int,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 r592_read_reg(struct r592_device *dev, int address)
{
 u32 value = readl(dev->mmio + address);
 dbg_reg("reg #%02d == 0x%08x", address, value);
 return value;
}
