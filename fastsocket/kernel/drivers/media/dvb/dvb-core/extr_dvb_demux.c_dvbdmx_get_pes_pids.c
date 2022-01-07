
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_demux {int pids; } ;
struct dmx_demux {int dummy; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int dvbdmx_get_pes_pids(struct dmx_demux *demux, u16 * pids)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

 memcpy(pids, dvbdemux->pids, 5 * sizeof(u16));
 return 0;
}
