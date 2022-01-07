
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int IntType; int Attributes; } ;
struct TYPE_5__ {int IRQInfo1; int Attributes; } ;
struct TYPE_4__ {int NumPorts1; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; } ;


 int CONF_ENABLE_IRQ ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 struct pcmcia_device* cur_dev ;
 int mio_cs_config (struct pcmcia_device*) ;

__attribute__((used)) static int cs_attach(struct pcmcia_device *link)
{
 link->io.Attributes1 = IO_DATA_PATH_WIDTH_16;
 link->io.NumPorts1 = 16;
 link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;
 link->conf.Attributes = CONF_ENABLE_IRQ;
 link->conf.IntType = INT_MEMORY_AND_IO;

 cur_dev = link;

 mio_cs_config(link);

 return 0;
}
