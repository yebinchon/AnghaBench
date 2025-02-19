
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int IntType; int Attributes; } ;
struct TYPE_7__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct TYPE_6__ {int Attributes; int IRQInfo1; int * Handler; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ io; TYPE_1__ irq; TYPE_4__* priv; } ;
struct TYPE_9__ {int cardnr; struct pcmcia_device* p_dev; } ;
typedef TYPE_4__ local_info_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int IRQ_FIRST_SHARED ;
 int IRQ_LEVEL_ID ;
 int IRQ_SHARE_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int elsa_cs_config (struct pcmcia_device*) ;
 TYPE_4__* kzalloc (int,int ) ;

__attribute__((used)) static int elsa_cs_probe(struct pcmcia_device *link)
{
    local_info_t *local;

    DEBUG(0, "elsa_cs_attach()\n");


    local = kzalloc(sizeof(local_info_t), GFP_KERNEL);
    if (!local) return -ENOMEM;

    local->p_dev = link;
    link->priv = local;

    local->cardnr = -1;


    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING|IRQ_FIRST_SHARED;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID|IRQ_SHARE_ID;
    link->irq.Handler = ((void*)0);
    link->io.NumPorts1 = 8;
    link->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
    link->io.IOAddrLines = 3;

    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;

    return elsa_cs_config(link);
}
