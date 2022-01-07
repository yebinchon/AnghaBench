
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {scalar_t__ timeout; int stat; } ;
struct cdrom_device_info {int handle; } ;


 scalar_t__ IOCTL_TIMEOUT ;
 int sr_do_ioctl (int ,struct packet_command*) ;

__attribute__((used)) static int sr_packet(struct cdrom_device_info *cdi,
  struct packet_command *cgc)
{
 if (cgc->timeout <= 0)
  cgc->timeout = IOCTL_TIMEOUT;

 sr_do_ioctl(cdi->handle, cgc);

 return cgc->stat;
}
