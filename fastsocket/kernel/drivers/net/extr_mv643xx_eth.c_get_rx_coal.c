
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
 int do_div (int,int ) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static unsigned int get_rx_coal(struct mv643xx_eth_private *mp)
{
 u32 val = rdlp(mp, SDMA_CONFIG);
 u64 temp;

 if (mp->shared->extended_rx_coal_limit)
  temp = ((val & 0x02000000) >> 10) | ((val & 0x003fff80) >> 7);
 else
  temp = (val & 0x003fff00) >> 8;

 temp *= 64000000;
 do_div(temp, mp->shared->t_clk);

 return (unsigned int)temp;
}
