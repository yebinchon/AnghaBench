
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int IntType; int Attributes; } ;
struct TYPE_7__ {int Attributes; TYPE_4__* Instance; int Handler; int IRQInfo1; } ;
struct TYPE_6__ {int NumPorts1; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; TYPE_4__* priv; } ;
struct TYPE_9__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_4__ btuart_info_t ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int btuart_config (struct pcmcia_device*) ;
 int btuart_interrupt ;
 TYPE_4__* kzalloc (int,int ) ;

__attribute__((used)) static int btuart_probe(struct pcmcia_device *link)
{
 btuart_info_t *info;


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->p_dev = link;
 link->priv = info;

 link->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 link->io.NumPorts1 = 8;
 link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING | IRQ_HANDLE_PRESENT;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;

 link->irq.Handler = btuart_interrupt;
 link->irq.Instance = info;

 link->conf.Attributes = CONF_ENABLE_IRQ;
 link->conf.IntType = INT_MEMORY_AND_IO;

 return btuart_config(link);
}
