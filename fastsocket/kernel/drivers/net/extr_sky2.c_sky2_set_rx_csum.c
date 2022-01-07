
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sky2_port {size_t port; int hw; int flags; } ;
struct net_device {int dummy; } ;


 int BMU_DIS_RX_CHKSUM ;
 int BMU_ENA_RX_CHKSUM ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int SKY2_FLAG_RX_CHECKSUM ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int * rxqaddr ;
 int sky2_write32 (int ,int ,int ) ;

__attribute__((used)) static int sky2_set_rx_csum(struct net_device *dev, u32 data)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 if (data)
  sky2->flags |= SKY2_FLAG_RX_CHECKSUM;
 else
  sky2->flags &= ~SKY2_FLAG_RX_CHECKSUM;

 sky2_write32(sky2->hw, Q_ADDR(rxqaddr[sky2->port], Q_CSR),
       data ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);

 return 0;
}
