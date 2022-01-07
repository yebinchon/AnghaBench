
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ts; } ;
struct TYPE_3__ {int (* ts ) (unsigned char*,int,int *,int ,int *,int ) ;} ;
struct dvb_demux_feed {TYPE_2__ feed; TYPE_1__ cb; } ;


 int DMX_OK ;
 int stub1 (unsigned char*,int,int *,int ,int *,int ) ;

__attribute__((used)) static int dvb_filter_pes2ts_cb(void *priv, unsigned char *data)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *) priv;

 dvbdmxfeed->cb.ts(data, 188, ((void*)0), 0,
     &dvbdmxfeed->feed.ts, DMX_OK);
 return 0;
}
