
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ATL1_REG_COUNT ;

__attribute__((used)) static int atl1_get_regs_len(struct net_device *netdev)
{
 return ATL1_REG_COUNT * sizeof(u32);
}
