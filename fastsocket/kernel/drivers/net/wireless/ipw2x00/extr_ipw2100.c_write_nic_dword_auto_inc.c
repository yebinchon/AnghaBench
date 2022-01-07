
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IPW_REG_AUTOINCREMENT_DATA ;
 int write_register (struct net_device*,int ,int ) ;

__attribute__((used)) static inline void write_nic_dword_auto_inc(struct net_device *dev, u32 val)
{
 write_register(dev, IPW_REG_AUTOINCREMENT_DATA, val);
}
