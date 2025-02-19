
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int mtu; } ;
struct amd8111e_priv {int options; scalar_t__ rx_buff_len; } ;


 unsigned int ETH_DATA_LEN ;
 scalar_t__ ETH_HLEN ;
 int OPTION_JUMBO_ENABLE ;
 scalar_t__ PKT_BUFF_SZ ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void amd8111e_set_rx_buff_len(struct net_device* dev)
{
 struct amd8111e_priv* lp = netdev_priv(dev);
 unsigned int mtu = dev->mtu;

 if (mtu > ETH_DATA_LEN){



  lp->rx_buff_len = mtu + ETH_HLEN + 10;
  lp->options |= OPTION_JUMBO_ENABLE;
 } else{
  lp->rx_buff_len = PKT_BUFF_SZ;
  lp->options &= ~OPTION_JUMBO_ENABLE;
 }
}
