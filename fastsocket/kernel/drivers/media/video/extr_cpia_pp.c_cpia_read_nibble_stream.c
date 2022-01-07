
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phase; } ;
struct parport {int name; TYPE_1__ ieee1284; } ;


 int DBG (char*,int ,...) ;
 unsigned char EOI ;
 int IEEE1284_PH_REV_DATA ;
 int PARPORT_CONTROL_AUTOFD ;
 int PARPORT_STATUS_ACK ;
 int parport_frob_control (struct parport*,int ,int ) ;
 int parport_read_status (struct parport*) ;
 scalar_t__ parport_wait_peripheral (struct parport*,int ,int ) ;

__attribute__((used)) static size_t cpia_read_nibble_stream(struct parport *port,
          void *buffer, size_t len,
          int flags)
{
 int i;
 unsigned char *buf = buffer;
 int endseen = 0;

 for (i=0; i < len; i++) {
  unsigned char nibble[2], byte = 0;
  int j;


  if (endseen > 3 )
   break;


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


  nibble[0] = parport_read_status (port) >>3;


  parport_frob_control (port, PARPORT_CONTROL_AUTOFD, 0);


  if (parport_wait_peripheral (port,
          PARPORT_STATUS_ACK,
          PARPORT_STATUS_ACK)) {

   DBG("%s: Nibble timeout at event 11\n",
     port->name);
   break;
  }


  nibble[1] = parport_read_status (port) >>3;


  for (j = 0; j < 2 ; j++ ) {
   nibble[j] &= ~8;
   if ((nibble[j] & 0x10) == 0)
    nibble[j] |= 8;
   nibble[j] &= 0xf;
  }
  byte = (nibble[0] |(nibble[1] << 4));
  *buf++ = byte;

  if(byte == EOI)
    endseen++;
  else
    endseen = 0;
 }
 return i;
}
