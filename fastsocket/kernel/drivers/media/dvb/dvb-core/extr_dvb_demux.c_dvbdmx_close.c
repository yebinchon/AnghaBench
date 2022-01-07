
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux {scalar_t__ users; } ;
struct dmx_demux {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dvbdmx_close(struct dmx_demux *demux)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

 if (dvbdemux->users == 0)
  return -ENODEV;

 dvbdemux->users--;

 return 0;
}
