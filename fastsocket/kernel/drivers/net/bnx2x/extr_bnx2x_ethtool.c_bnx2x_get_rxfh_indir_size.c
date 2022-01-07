
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int T_ETH_INDIRECTION_TABLE_SIZE ;

__attribute__((used)) static u32 bnx2x_get_rxfh_indir_size(struct net_device *dev)
{
 return T_ETH_INDIRECTION_TABLE_SIZE;
}
