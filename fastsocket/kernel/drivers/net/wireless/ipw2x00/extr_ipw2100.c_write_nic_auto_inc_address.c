
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IPW_REG_AUTOINCREMENT_ADDRESS ;
 int IPW_REG_INDIRECT_ADDR_MASK ;
 int write_register (struct net_device*,int ,int) ;

__attribute__((used)) static inline void write_nic_auto_inc_address(struct net_device *dev, u32 addr)
{
 write_register(dev, IPW_REG_AUTOINCREMENT_ADDRESS,
         addr & IPW_REG_INDIRECT_ADDR_MASK);
}
