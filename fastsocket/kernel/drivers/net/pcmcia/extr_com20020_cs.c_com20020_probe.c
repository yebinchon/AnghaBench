
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {struct net_device* Instance; int IRQInfo1; int Attributes; } ;
struct TYPE_10__ {int IntType; int Attributes; } ;
struct TYPE_9__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct pcmcia_device {TYPE_5__* priv; TYPE_4__ irq; TYPE_3__ conf; TYPE_2__ io; } ;
struct net_device {int * dev_addr; } ;
struct com20020_dev_t {int dummy; } ;
struct TYPE_8__ {int owner; } ;
struct arcnet_local {int clockm; TYPE_1__ hw; int clockp; int backplane; int timeout; } ;
struct TYPE_12__ {struct net_device* dev; } ;
typedef TYPE_5__ com20020_dev_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_EXCLUSIVE ;
 int THIS_MODULE ;
 struct net_device* alloc_arcdev (char*) ;
 int backplane ;
 int clockm ;
 int clockp ;
 int com20020_config (struct pcmcia_device*) ;
 int kfree (TYPE_5__*) ;
 TYPE_5__* kzalloc (int,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int node ;
 int timeout ;

__attribute__((used)) static int com20020_probe(struct pcmcia_device *p_dev)
{
    com20020_dev_t *info;
    struct net_device *dev;
    struct arcnet_local *lp;

    DEBUG(0, "com20020_attach()\n");


    info = kzalloc(sizeof(struct com20020_dev_t), GFP_KERNEL);
    if (!info)
 goto fail_alloc_info;

    dev = alloc_arcdev("");
    if (!dev)
 goto fail_alloc_dev;

    lp = netdev_priv(dev);
    lp->timeout = timeout;
    lp->backplane = backplane;
    lp->clockp = clockp;
    lp->clockm = clockm & 3;
    lp->hw.owner = THIS_MODULE;


    dev->dev_addr[0] = node;

    p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
    p_dev->io.NumPorts1 = 16;
    p_dev->io.IOAddrLines = 16;
    p_dev->irq.Attributes = IRQ_TYPE_EXCLUSIVE;
    p_dev->irq.IRQInfo1 = IRQ_LEVEL_ID;
    p_dev->conf.Attributes = CONF_ENABLE_IRQ;
    p_dev->conf.IntType = INT_MEMORY_AND_IO;

    p_dev->irq.Instance = info->dev = dev;
    p_dev->priv = info;

    return com20020_config(p_dev);

fail_alloc_dev:
    kfree(info);
fail_alloc_info:
    return -ENOMEM;
}
