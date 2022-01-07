
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dvb_filter_pes2ts {scalar_t__ priv; } ;
struct TYPE_4__ {int ts; } ;
struct TYPE_3__ {int (* ts ) (int*,size_t,int *,int ,int *,int ) ;} ;
struct dvb_demux_feed {int ts_type; TYPE_2__ feed; TYPE_1__ cb; } ;


 int DMX_OK ;
 int TS_PACKET ;
 int TS_PAYLOAD_ONLY ;
 int dvb_filter_pes2ts (struct dvb_filter_pes2ts*,int*,size_t,int) ;
 int stub1 (int*,size_t,int *,int ,int *,int ) ;

int av7110_record_cb(struct dvb_filter_pes2ts *p2t, u8 *buf, size_t len)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *) p2t->priv;

 if (!(dvbdmxfeed->ts_type & TS_PACKET))
  return 0;
 if (buf[3] == 0xe0)
  buf[4] = buf[5] = 0;
 if (dvbdmxfeed->ts_type & TS_PAYLOAD_ONLY)
  return dvbdmxfeed->cb.ts(buf, len, ((void*)0), 0,
      &dvbdmxfeed->feed.ts, DMX_OK);
 else
  return dvb_filter_pes2ts(p2t, buf, len, 1);
}
