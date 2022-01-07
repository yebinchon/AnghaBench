
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int BasePort1; } ;
struct TYPE_3__ {int ConfigIndex; } ;
struct pcmcia_device {TYPE_2__ io; TYPE_1__ conf; } ;


 int pcmcia_request_io (struct pcmcia_device*,TYPE_2__*) ;

__attribute__((used)) static int ungermann_try_io_port(struct pcmcia_device *link)
{
    int ret;
    unsigned int ioaddr;




    for (ioaddr = 0x300; ioaddr < 0x3e0; ioaddr += 0x20) {
 link->io.BasePort1 = ioaddr;
 ret = pcmcia_request_io(link, &link->io);
 if (ret == 0) {

     link->conf.ConfigIndex =
  ((link->io.BasePort1 & 0x0f0) >> 3) | 0x22;
     return ret;
 }
    }
    return ret;
}
