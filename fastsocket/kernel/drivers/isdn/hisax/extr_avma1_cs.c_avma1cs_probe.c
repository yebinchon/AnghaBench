
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ConfigIndex; int Present; int IntType; int Attributes; } ;
struct TYPE_5__ {int Attributes; int IRQInfo1; } ;
struct TYPE_4__ {int NumPorts1; int NumPorts2; int IOAddrLines; int Attributes2; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; int * priv; } ;
typedef int local_info_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_FIRST_SHARED ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int IRQ_TYPE_EXCLUSIVE ;
 int PRESENT_OPTION ;
 int avma1cs_config (struct pcmcia_device*) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int avma1cs_probe(struct pcmcia_device *p_dev)
{
    local_info_t *local;

    DEBUG(0, "avma1cs_attach()\n");


    local = kzalloc(sizeof(local_info_t), GFP_KERNEL);
    if (!local)
 return -ENOMEM;

    p_dev->priv = local;


    p_dev->io.NumPorts1 = 16;
    p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
    p_dev->io.NumPorts2 = 16;
    p_dev->io.Attributes2 = IO_DATA_PATH_WIDTH_16;
    p_dev->io.IOAddrLines = 5;


    p_dev->irq.Attributes = IRQ_TYPE_EXCLUSIVE;
    p_dev->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING|IRQ_FIRST_SHARED;

    p_dev->irq.IRQInfo1 = IRQ_LEVEL_ID;


    p_dev->conf.Attributes = CONF_ENABLE_IRQ;
    p_dev->conf.IntType = INT_MEMORY_AND_IO;
    p_dev->conf.ConfigIndex = 1;
    p_dev->conf.Present = PRESENT_OPTION;

    return avma1cs_config(p_dev);
}
