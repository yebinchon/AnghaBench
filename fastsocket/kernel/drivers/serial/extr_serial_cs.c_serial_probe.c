
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct serial_info {struct pcmcia_device* p_dev; } ;
struct TYPE_6__ {int IntType; int Status; int Attributes; } ;
struct TYPE_5__ {int IRQInfo1; int Attributes; } ;
struct TYPE_4__ {int NumPorts1; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; struct serial_info* priv; } ;


 int CCSR_AUDIO_ENA ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_SPKR ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 scalar_t__ do_sound ;
 struct serial_info* kzalloc (int,int ) ;
 int serial_config (struct pcmcia_device*) ;

__attribute__((used)) static int serial_probe(struct pcmcia_device *link)
{
 struct serial_info *info;

 DEBUG(0, "serial_attach()\n");


 info = kzalloc(sizeof (*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->p_dev = link;
 link->priv = info;

 link->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 link->io.NumPorts1 = 8;
 link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;
 link->conf.Attributes = CONF_ENABLE_IRQ;
 if (do_sound) {
  link->conf.Attributes |= CONF_ENABLE_SPKR;
  link->conf.Status = CCSR_AUDIO_ENA;
 }
 link->conf.IntType = INT_MEMORY_AND_IO;

 return serial_config(link);
}
