
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv643xx_eth_private {TYPE_2__* shared; TYPE_1__* dev; } ;
struct TYPE_4__ {int t_clk; int tx_bw_control; } ;
struct TYPE_3__ {int mtu; } ;


 int TX_BW_BURST ;
 int TX_BW_BURST_MOVED ;


 int TX_BW_MTU ;
 int TX_BW_MTU_MOVED ;
 int TX_BW_RATE ;
 int TX_BW_RATE_MOVED ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void tx_set_rate(struct mv643xx_eth_private *mp, int rate, int burst)
{
 int token_rate;
 int mtu;
 int bucket_size;

 token_rate = ((rate / 1000) * 64) / (mp->shared->t_clk / 1000);
 if (token_rate > 1023)
  token_rate = 1023;

 mtu = (mp->dev->mtu + 255) >> 8;
 if (mtu > 63)
  mtu = 63;

 bucket_size = (burst + 255) >> 8;
 if (bucket_size > 65535)
  bucket_size = 65535;

 switch (mp->shared->tx_bw_control) {
 case 128:
  wrlp(mp, TX_BW_RATE, token_rate);
  wrlp(mp, TX_BW_MTU, mtu);
  wrlp(mp, TX_BW_BURST, bucket_size);
  break;
 case 129:
  wrlp(mp, TX_BW_RATE_MOVED, token_rate);
  wrlp(mp, TX_BW_MTU_MOVED, mtu);
  wrlp(mp, TX_BW_BURST_MOVED, bucket_size);
  break;
 }
}
