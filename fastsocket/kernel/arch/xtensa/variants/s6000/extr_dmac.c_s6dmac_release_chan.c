
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int s6dmac_disable_chan (int ,int) ;

void s6dmac_release_chan(u32 dmac, int chan)
{
 if (chan >= 0)
  s6dmac_disable_chan(dmac, chan);
}
