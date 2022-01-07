
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux {int feed; int filter; int cnt_storage; } ;


 int demux_shadow_release (struct dvb_demux*) ;
 int vfree (int ) ;

void dvb_dmx_release(struct dvb_demux *dvbdemux)
{
 demux_shadow_release(dvbdemux);
 vfree(dvbdemux->cnt_storage);
 vfree(dvbdemux->filter);
 vfree(dvbdemux->feed);
}
