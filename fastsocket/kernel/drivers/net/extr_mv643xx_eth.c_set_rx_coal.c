
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct TYPE_2__ {int t_clk; scalar_t__ extended_rx_coal_limit; } ;


 int SDMA_CONFIG ;
 int do_div (int,int) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void set_rx_coal(struct mv643xx_eth_private *mp, unsigned int usec)
{
 u64 temp;
 u32 val;

 temp = (u64)usec * mp->shared->t_clk;
 temp += 31999999;
 do_div(temp, 64000000);

 val = rdlp(mp, SDMA_CONFIG);
 if (mp->shared->extended_rx_coal_limit) {
  if (temp > 0xffff)
   temp = 0xffff;
  val &= ~0x023fff80;
  val |= (temp & 0x8000) << 10;
  val |= (temp & 0x7fff) << 7;
 } else {
  if (temp > 0x3fff)
   temp = 0x3fff;
  val &= ~0x003fff00;
  val |= (temp & 0x3fff) << 8;
 }
 wrlp(mp, SDMA_CONFIG, val);
}
