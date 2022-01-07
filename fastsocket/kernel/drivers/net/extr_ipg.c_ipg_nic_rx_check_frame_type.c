
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipg_rx {int rfs; } ;
struct ipg_nic_private {int rx_current; struct ipg_rx* rxd; } ;


 int FRAME_NO_START_NO_END ;
 scalar_t__ FRAME_WITH_END ;
 scalar_t__ FRAME_WITH_START ;
 int IPG_RFDLIST_LENGTH ;
 int IPG_RFS_FRAMEEND ;
 int IPG_RFS_FRAMESTART ;
 int le64_to_cpu (int ) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipg_nic_rx_check_frame_type(struct net_device *dev)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 struct ipg_rx *rxfd = sp->rxd + (sp->rx_current % IPG_RFDLIST_LENGTH);
 int type = FRAME_NO_START_NO_END;

 if (le64_to_cpu(rxfd->rfs) & IPG_RFS_FRAMESTART)
  type += FRAME_WITH_START;
 if (le64_to_cpu(rxfd->rfs) & IPG_RFS_FRAMEEND)
  type += FRAME_WITH_END;
 return type;
}
