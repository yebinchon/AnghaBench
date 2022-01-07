
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int pid; } ;


 int PVR2_TRACE_DVB_FEED ;
 int pvr2_dvb_ctrl_feed (struct dvb_demux_feed*,int ) ;
 int pvr2_trace (int ,char*,int ) ;

__attribute__((used)) static int pvr2_dvb_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 pvr2_trace(PVR2_TRACE_DVB_FEED, "stop pid: 0x%04x", dvbdmxfeed->pid);
 return pvr2_dvb_ctrl_feed(dvbdmxfeed, 0);
}
