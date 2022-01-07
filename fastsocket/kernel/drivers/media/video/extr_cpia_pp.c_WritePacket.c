
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pp_cam_entry {int port; } ;


 int DBG (char*,...) ;
 int EINVAL ;
 int EIO ;
 int EndTransferMode (struct pp_cam_entry*) ;
 scalar_t__ ForwardSetup (struct pp_cam_entry*) ;
 int parport_write (int ,int const*,size_t) ;

__attribute__((used)) static int WritePacket(struct pp_cam_entry *cam, const u8 *packet, size_t size)
{
 int retval=0;
 int size_written;

 if (packet == ((void*)0)) {
  return -EINVAL;
 }
 if (ForwardSetup(cam)) {
  DBG("Write failed in setup\n");
  return -EIO;
 }
 size_written = parport_write(cam->port, packet, size);
 if(size_written != size) {
  DBG("Write failed, wrote %d/%d\n", size_written, size);
  retval = -EIO;
 }
 EndTransferMode(cam);
 return retval;
}
