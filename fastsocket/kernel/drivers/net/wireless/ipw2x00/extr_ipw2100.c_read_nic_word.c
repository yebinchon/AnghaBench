
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int IPW_REG_INDIRECT_ACCESS_ADDRESS ;
 int IPW_REG_INDIRECT_ACCESS_DATA ;
 int IPW_REG_INDIRECT_ADDR_MASK ;
 int read_register_word (struct net_device*,int ,int *) ;
 int write_register (struct net_device*,int ,int) ;

__attribute__((used)) static inline void read_nic_word(struct net_device *dev, u32 addr, u16 * val)
{
 write_register(dev, IPW_REG_INDIRECT_ACCESS_ADDRESS,
         addr & IPW_REG_INDIRECT_ADDR_MASK);
 read_register_word(dev, IPW_REG_INDIRECT_ACCESS_DATA, val);
}
