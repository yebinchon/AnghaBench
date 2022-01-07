
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ngene_channel {scalar_t__ users; int demux; } ;


 int dvb_dmx_swfilter (int *,void*,int ) ;

void *tsin_exchange(void *priv, void *buf, u32 len, u32 clock, u32 flags)
{
 struct ngene_channel *chan = priv;


 if (chan->users > 0)
  dvb_dmx_swfilter(&chan->demux, buf, len);
 return ((void*)0);
}
