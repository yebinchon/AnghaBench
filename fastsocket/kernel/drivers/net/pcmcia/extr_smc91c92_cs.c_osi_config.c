
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int NumPorts1; int NumPorts2; int IOAddrLines; unsigned int BasePort2; scalar_t__ BasePort1; int Attributes2; } ;
struct TYPE_5__ {int ConfigIndex; int Status; int Attributes; } ;
struct TYPE_4__ {int Attributes; } ;
struct pcmcia_device {TYPE_3__ io; TYPE_2__ conf; TYPE_1__ irq; struct net_device* priv; } ;
struct net_device {scalar_t__ base_addr; } ;


 int CCSR_AUDIO_ENA ;
 int CONF_ENABLE_SPKR ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_FIRST_SHARED ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_3__*) ;

__attribute__((used)) static int osi_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    static const unsigned int com[4] = { 0x3f8, 0x2f8, 0x3e8, 0x2e8 };
    int i, j;

    link->conf.Attributes |= CONF_ENABLE_SPKR;
    link->conf.Status = CCSR_AUDIO_ENA;
    link->irq.Attributes =
 IRQ_TYPE_DYNAMIC_SHARING|IRQ_FIRST_SHARED|IRQ_HANDLE_PRESENT;
    link->io.NumPorts1 = 64;
    link->io.Attributes2 = IO_DATA_PATH_WIDTH_8;
    link->io.NumPorts2 = 8;
    link->io.IOAddrLines = 16;


    link->conf.ConfigIndex = 0x23;

    for (i = j = 0; j < 4; j++) {
 link->io.BasePort2 = com[j];
 i = pcmcia_request_io(link, &link->io);
 if (i == 0)
  break;
    }
    if (i != 0) {

 link->conf.ConfigIndex = 0x03;
 link->io.NumPorts2 = 0;
 i = pcmcia_request_io(link, &link->io);
    }
    dev->base_addr = link->io.BasePort1 + 0x10;
    return i;
}
