
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IGB_REGS_LEN ;

__attribute__((used)) static int igb_get_regs_len(struct net_device *netdev)
{

 return 739 * sizeof(u32);
}
