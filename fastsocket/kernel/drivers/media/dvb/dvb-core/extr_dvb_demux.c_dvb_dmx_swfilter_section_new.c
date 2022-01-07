
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmx_section_feed {scalar_t__ secbufp; scalar_t__ tsfeedp; int* secbuf; int seclen; int* secbuf_base; } ;
struct TYPE_2__ {struct dmx_section_feed sec; } ;
struct dvb_demux_feed {TYPE_1__ feed; } ;


 int printk (char*,...) ;

__attribute__((used)) static void dvb_dmx_swfilter_section_new(struct dvb_demux_feed *feed)
{
 struct dmx_section_feed *sec = &feed->feed.sec;
 sec->tsfeedp = sec->secbufp = sec->seclen = 0;
 sec->secbuf = sec->secbuf_base;
}
