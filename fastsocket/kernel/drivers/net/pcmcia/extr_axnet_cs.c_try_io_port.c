
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int NumPorts1; scalar_t__ NumPorts2; int BasePort1; int IOAddrLines; int BasePort2; void* Attributes2; void* Attributes1; } ;
struct TYPE_3__ {int Attributes; } ;
struct pcmcia_device {TYPE_2__ io; TYPE_1__ irq; } ;


 void* IO_DATA_PATH_WIDTH_16 ;
 void* IO_DATA_PATH_WIDTH_8 ;
 void* IO_DATA_PATH_WIDTH_AUTO ;
 int IRQ_FIRST_SHARED ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_2__*) ;

__attribute__((used)) static int try_io_port(struct pcmcia_device *link)
{
    int j, ret;
    if (link->io.NumPorts1 == 32) {
 link->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
 if (link->io.NumPorts2 > 0) {

     link->io.Attributes2 = IO_DATA_PATH_WIDTH_8;
     link->irq.Attributes =
  IRQ_TYPE_DYNAMIC_SHARING|IRQ_FIRST_SHARED;
 }
    } else {

 link->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 link->io.Attributes2 = IO_DATA_PATH_WIDTH_16;
    }
    if (link->io.BasePort1 == 0) {
 link->io.IOAddrLines = 16;
 for (j = 0; j < 0x400; j += 0x20) {
     link->io.BasePort1 = j ^ 0x300;
     link->io.BasePort2 = (j ^ 0x300) + 0x10;
     ret = pcmcia_request_io(link, &link->io);
     if (ret == 0)
      return ret;
 }
 return ret;
    } else {
 return pcmcia_request_io(link, &link->io);
    }
}
