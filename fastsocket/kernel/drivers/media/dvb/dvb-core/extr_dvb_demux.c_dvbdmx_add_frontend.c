
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dvb_demux {struct list_head frontend_list; } ;
struct dmx_frontend {int connectivity_list; } ;
struct dmx_demux {int dummy; } ;


 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int dvbdmx_add_frontend(struct dmx_demux *demux,
          struct dmx_frontend *frontend)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;
 struct list_head *head = &dvbdemux->frontend_list;

 list_add(&(frontend->connectivity_list), head);

 return 0;
}
