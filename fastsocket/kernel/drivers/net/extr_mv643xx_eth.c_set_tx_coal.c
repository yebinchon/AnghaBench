
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct TYPE_2__ {int t_clk; } ;


 int TX_FIFO_URGENT_THRESHOLD ;
 int do_div (int,int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void set_tx_coal(struct mv643xx_eth_private *mp, unsigned int usec)
{
 u64 temp;

 temp = (u64)usec * mp->shared->t_clk;
 temp += 31999999;
 do_div(temp, 64000000);

 if (temp > 0x3fff)
  temp = 0x3fff;

 wrlp(mp, TX_FIFO_URGENT_THRESHOLD, temp << 4);
}
