
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* data_forward ) (struct parport*) ;} ;


 int PARPORT_CONTROL_AUTOFD ;
 int PARPORT_CONTROL_INIT ;
 int PARPORT_CONTROL_SELECT ;
 int PARPORT_CONTROL_STROBE ;
 int PARPORT_STATUS_BUSY ;
 int parport_frob_control (struct parport*,int,int) ;
 scalar_t__ parport_poll_peripheral (struct parport*,int ,int ,int) ;
 int parport_write_data (struct parport*,unsigned char) ;
 int stub1 (struct parport*) ;

size_t parport_ieee1284_epp_write_addr (struct parport *port,
     const void *buffer, size_t len,
     int flags)
{
 unsigned char *bp = (unsigned char *) buffer;
 size_t ret = 0;


 parport_frob_control (port,
         PARPORT_CONTROL_STROBE |
         PARPORT_CONTROL_AUTOFD |
         PARPORT_CONTROL_SELECT |
         PARPORT_CONTROL_INIT,
         PARPORT_CONTROL_STROBE |
         PARPORT_CONTROL_INIT);
 port->ops->data_forward (port);
 for (; len > 0; len--, bp++) {

  parport_write_data (port, *bp);
  parport_frob_control (port, PARPORT_CONTROL_SELECT,
          PARPORT_CONTROL_SELECT);


  if (parport_poll_peripheral (port, PARPORT_STATUS_BUSY, 0, 10))
   break;


  parport_frob_control (port, PARPORT_CONTROL_SELECT, 0);


  if (parport_poll_peripheral (port, PARPORT_STATUS_BUSY,
          PARPORT_STATUS_BUSY, 5))
   break;

  ret++;
 }


 parport_frob_control (port, PARPORT_CONTROL_STROBE, 0);

 return ret;
}
