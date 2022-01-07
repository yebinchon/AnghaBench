
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int dummy; } ;
struct av7110_p2t {struct dvb_demux_feed* feed; scalar_t__ frags; scalar_t__ pos; scalar_t__ counter; int pes; } ;


 int TS_SIZE ;
 int memset (int ,int ,int ) ;

void av7110_p2t_init(struct av7110_p2t *p, struct dvb_demux_feed *feed)
{
 memset(p->pes, 0, TS_SIZE);
 p->counter = 0;
 p->pos = 0;
 p->frags = 0;
 if (feed)
  p->feed = feed;
}
