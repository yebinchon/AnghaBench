
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cp_private {scalar_t__ rx_buf_sz; TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned int mtu; } ;


 unsigned int ETH_DATA_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ PKT_BUF_SZ ;

__attribute__((used)) static inline void cp_set_rxbufsize (struct cp_private *cp)
{
 unsigned int mtu = cp->dev->mtu;

 if (mtu > ETH_DATA_LEN)

  cp->rx_buf_sz = mtu + ETH_HLEN + 8;
 else
  cp->rx_buf_sz = PKT_BUF_SZ;
}
