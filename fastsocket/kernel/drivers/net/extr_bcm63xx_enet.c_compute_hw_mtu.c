
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_enet_priv {int hw_mtu; int rx_skb_size; } ;


 int ALIGN (scalar_t__,int) ;
 int BCMENET_DMA_MAXBURST ;
 int BCMENET_MAX_MTU ;
 int EINVAL ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ VLAN_ETH_HLEN ;

__attribute__((used)) static int compute_hw_mtu(struct bcm_enet_priv *priv, int mtu)
{
 int actual_mtu;

 actual_mtu = mtu;


 actual_mtu += VLAN_ETH_HLEN;

 if (actual_mtu < 64 || actual_mtu > BCMENET_MAX_MTU)
  return -EINVAL;







 priv->hw_mtu = actual_mtu;





 priv->rx_skb_size = ALIGN(actual_mtu + ETH_FCS_LEN,
      BCMENET_DMA_MAXBURST * 4);
 return 0;
}
