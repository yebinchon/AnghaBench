
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_info_t {struct pcmcia_device* p_dev; } ;
struct TYPE_6__ {int IntType; int Attributes; } ;
struct TYPE_5__ {int IRQInfo1; int Attributes; } ;
struct TYPE_4__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; struct scsi_info_t* priv; } ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_EXCLUSIVE ;
 int SYM53C500_config (struct pcmcia_device*) ;
 struct scsi_info_t* kzalloc (int,int ) ;

__attribute__((used)) static int
SYM53C500_probe(struct pcmcia_device *link)
{
 struct scsi_info_t *info;

 DEBUG(0, "SYM53C500_attach()\n");


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->p_dev = link;
 link->priv = info;
 link->io.NumPorts1 = 16;
 link->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
 link->io.IOAddrLines = 10;
 link->irq.Attributes = IRQ_TYPE_EXCLUSIVE;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;
 link->conf.Attributes = CONF_ENABLE_IRQ;
 link->conf.IntType = INT_MEMORY_AND_IO;

 return SYM53C500_config(link);
}
