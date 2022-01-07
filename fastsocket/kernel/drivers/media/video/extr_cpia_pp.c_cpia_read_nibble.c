
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phase; } ;
struct parport {TYPE_3__* physport; int name; TYPE_1__ ieee1284; } ;
struct TYPE_5__ {int phase; } ;
struct TYPE_6__ {TYPE_2__ ieee1284; } ;


 int DBG (char*,int ,...) ;
 int IEEE1284_PH_HBUSY_DAVAIL ;
 int IEEE1284_PH_REV_DATA ;
 int IEEE1284_PH_REV_IDLE ;
 int PARPORT_CONTROL_AUTOFD ;
 int PARPORT_STATUS_ACK ;
 int PARPORT_STATUS_ERROR ;
 int parport_frob_control (struct parport*,int ,int ) ;
 int parport_read_status (struct parport*) ;
 scalar_t__ parport_wait_peripheral (struct parport*,int ,int ) ;

__attribute__((used)) static size_t cpia_read_nibble (struct parport *port,
    void *buffer, size_t len,
    int flags)
{



 unsigned char *buf = buffer;
 int i;
 unsigned char byte = 0;

 len *= 2;
 for (i=0; i < len; i++) {
  unsigned char nibble;
  if (((i ) == 0) &&
      (parport_read_status(port) & PARPORT_STATUS_ERROR)) {
   DBG("%s: No more nibble data (%d bytes)\n",
       port->name, i/2);
   goto end_of_data;
  }


  parport_frob_control (port,
          PARPORT_CONTROL_AUTOFD,
          PARPORT_CONTROL_AUTOFD);


  port->ieee1284.phase = IEEE1284_PH_REV_DATA;
  if (parport_wait_peripheral (port,
          PARPORT_STATUS_ACK, 0)) {

     DBG("%s: Nibble timeout at event 9 (%d bytes)\n",
     port->name, i/2);
   parport_frob_control (port, PARPORT_CONTROL_AUTOFD, 0);
   break;
  }



  nibble = parport_read_status (port) >> 3;
  nibble &= ~8;
  if ((nibble & 0x10) == 0)
   nibble |= 8;
  nibble &= 0xf;


  parport_frob_control (port, PARPORT_CONTROL_AUTOFD, 0);


  if (parport_wait_peripheral (port,
          PARPORT_STATUS_ACK,
          PARPORT_STATUS_ACK)) {

   DBG("%s: Nibble timeout at event 11\n",
     port->name);
   break;
  }

  if (i & 1) {

   byte |= nibble << 4;
   *buf++ = byte;
  } else
   byte = nibble;
 }

 if (i == len) {

  if (parport_read_status (port) & PARPORT_STATUS_ERROR) {
  end_of_data:

   parport_frob_control (port,
           PARPORT_CONTROL_AUTOFD,
           PARPORT_CONTROL_AUTOFD);
   port->physport->ieee1284.phase = IEEE1284_PH_REV_IDLE;
  }
  else
   port->physport->ieee1284.phase = IEEE1284_PH_HBUSY_DAVAIL;
 }

 return i/2;
}
