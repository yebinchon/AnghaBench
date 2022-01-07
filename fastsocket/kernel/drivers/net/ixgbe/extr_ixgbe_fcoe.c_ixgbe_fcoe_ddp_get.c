
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scatterlist {int dummy; } ;
struct net_device {int dummy; } ;


 int ixgbe_fcoe_ddp_setup (struct net_device*,int ,struct scatterlist*,unsigned int,int ) ;

int ixgbe_fcoe_ddp_get(struct net_device *netdev, u16 xid,
         struct scatterlist *sgl, unsigned int sgc)
{
 return ixgbe_fcoe_ddp_setup(netdev, xid, sgl, sgc, 0);
}
