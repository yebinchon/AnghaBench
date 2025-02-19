
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev_motion {scalar_t__ dx; scalar_t__ dy; int buttons; scalar_t__ dz; } ;
struct mousedev_client {size_t tail; int mode; int bufsiz; size_t head; int last_buttons; scalar_t__ ready; struct mousedev_motion* packets; } ;





 int PACKET_QUEUE_LEN ;
 char mousedev_limit_delta (scalar_t__,int) ;

__attribute__((used)) static void mousedev_packet(struct mousedev_client *client,
       signed char *ps2_data)
{
 struct mousedev_motion *p = &client->packets[client->tail];

 ps2_data[0] = 0x08 |
  ((p->dx < 0) << 4) | ((p->dy < 0) << 5) | (p->buttons & 0x07);
 ps2_data[1] = mousedev_limit_delta(p->dx, 127);
 ps2_data[2] = mousedev_limit_delta(p->dy, 127);
 p->dx -= ps2_data[1];
 p->dy -= ps2_data[2];

 switch (client->mode) {
 case 130:
  ps2_data[3] = mousedev_limit_delta(p->dz, 7);
  p->dz -= ps2_data[3];
  ps2_data[3] = (ps2_data[3] & 0x0f) | ((p->buttons & 0x18) << 1);
  client->bufsiz = 4;
  break;

 case 129:
  ps2_data[0] |=
   ((p->buttons & 0x10) >> 3) | ((p->buttons & 0x08) >> 1);
  ps2_data[3] = mousedev_limit_delta(p->dz, 127);
  p->dz -= ps2_data[3];
  client->bufsiz = 4;
  break;

 case 128:
 default:
  ps2_data[0] |=
   ((p->buttons & 0x10) >> 3) | ((p->buttons & 0x08) >> 1);
  p->dz = 0;
  client->bufsiz = 3;
  break;
 }

 if (!p->dx && !p->dy && !p->dz) {
  if (client->tail == client->head) {
   client->ready = 0;
   client->last_buttons = p->buttons;
  } else
   client->tail = (client->tail + 1) % PACKET_QUEUE_LEN;
 }
}
