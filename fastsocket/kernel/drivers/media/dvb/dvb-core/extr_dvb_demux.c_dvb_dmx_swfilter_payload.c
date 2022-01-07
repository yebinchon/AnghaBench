
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ts; } ;
struct TYPE_4__ {int (* ts ) (int const*,int,int *,int ,int *,int ) ;} ;
struct dvb_demux_feed {int peslen; TYPE_1__ feed; TYPE_2__ cb; } ;


 int DMX_OK ;
 int payload (int const*) ;
 int stub1 (int const*,int,int *,int ,int *,int ) ;

__attribute__((used)) static inline int dvb_dmx_swfilter_payload(struct dvb_demux_feed *feed,
        const u8 *buf)
{
 int count = payload(buf);
 int p;



 if (count == 0)
  return -1;

 p = 188 - count;
 if (buf[1] & 0x40)
  feed->peslen = 0xfffa;

 feed->peslen += count;

 return feed->cb.ts(&buf[p], count, ((void*)0), 0, &feed->feed.ts, DMX_OK);
}
