
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frontend; } ;
struct videobuf_dvb_frontend {TYPE_1__ dvb; } ;
struct cx23885_tsport {TYPE_2__* dev; int frontends; } ;
struct TYPE_4__ {int board; } ;



 int netup_ci_exit (struct cx23885_tsport*) ;
 struct videobuf_dvb_frontend* videobuf_dvb_get_frontend (int *,int) ;
 int videobuf_dvb_unregister_bus (int *) ;

int cx23885_dvb_unregister(struct cx23885_tsport *port)
{
 struct videobuf_dvb_frontend *fe0;
 fe0 = videobuf_dvb_get_frontend(&port->frontends, 1);
 if (fe0->dvb.frontend)
  videobuf_dvb_unregister_bus(&port->frontends);

 switch (port->dev->board) {
 case 128:
  netup_ci_exit(port);
  break;
 }

 return 0;
}
