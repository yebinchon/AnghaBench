
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pp_cam_entry {TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_5__ {TYPE_1__ ieee1284; } ;


 int EINVAL ;
 int EIO ;
 int EndTransferMode (struct pp_cam_entry*) ;
 scalar_t__ IEEE1284_MODE_NIBBLE ;
 scalar_t__ ReverseSetup (struct pp_cam_entry*,int ) ;
 size_t cpia_read_nibble (TYPE_2__*,int *,size_t,int ) ;
 size_t parport_read (TYPE_2__*,int *,size_t) ;

__attribute__((used)) static int ReadPacket(struct pp_cam_entry *cam, u8 *packet, size_t size)
{
 int retval=0;

 if (packet == ((void*)0)) {
  return -EINVAL;
 }
 if (ReverseSetup(cam, 0)) {
  return -EIO;
 }


 if(cam->port->ieee1284.mode == IEEE1284_MODE_NIBBLE) {
  if(cpia_read_nibble(cam->port, packet, size, 0) != size)
   retval = -EIO;
 } else {
  if(parport_read(cam->port, packet, size) != size)
   retval = -EIO;
 }
 EndTransferMode(cam);
 return retval;
}
