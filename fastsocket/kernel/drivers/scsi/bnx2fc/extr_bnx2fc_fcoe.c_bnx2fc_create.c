
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int BNX2FC_CREATE_LINK_UP ;
 int _bnx2fc_create (struct net_device*,int,int ) ;

__attribute__((used)) static int bnx2fc_create(struct net_device *netdev, enum fip_state fip_mode)
{
 return _bnx2fc_create(netdev, fip_mode, BNX2FC_CREATE_LINK_UP);
}
