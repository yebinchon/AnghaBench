
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Attributes; scalar_t__ Size; scalar_t__ Base; scalar_t__ AccessSpeed; } ;
typedef TYPE_4__ win_req_t ;
struct smc_private {scalar_t__ manfid; scalar_t__ cardid; int base; } ;
struct smc_cfg_mem {int dummy; } ;
struct TYPE_10__ {scalar_t__ ConfigBase; int Status; int Attributes; } ;
struct TYPE_9__ {int IOAddrLines; int NumPorts2; int BasePort1; int Attributes2; } ;
struct TYPE_8__ {int Attributes; } ;
struct pcmcia_device {int win; TYPE_3__ conf; TYPE_2__ io; TYPE_1__ irq; struct net_device* priv; } ;
struct net_device {int base_addr; } ;
struct TYPE_12__ {scalar_t__ CardOffset; scalar_t__ Page; } ;
typedef TYPE_5__ memreq_t ;


 int CCSR_AUDIO_ENA ;
 int CONF_ENABLE_SPKR ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_FIRST_SHARED ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 scalar_t__ MANFID_MEGAHERTZ ;
 scalar_t__ MANFID_MOTOROLA ;
 scalar_t__ PRODID_MEGAHERTZ_EM3288 ;
 int WIN_DATA_WIDTH_8 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_AM ;
 int ioremap (scalar_t__,scalar_t__) ;
 int kfree (struct smc_cfg_mem*) ;
 struct smc_cfg_mem* kmalloc (int,int ) ;
 int mhz_3288_power (struct pcmcia_device*) ;
 int mhz_mfc_config_check ;
 struct smc_private* netdev_priv (struct net_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_map_mem_page (int ,TYPE_5__*) ;
 int pcmcia_request_window (struct pcmcia_device**,TYPE_4__*,int *) ;

__attribute__((used)) static int mhz_mfc_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = netdev_priv(dev);
    struct smc_cfg_mem *cfg_mem;
    win_req_t req;
    memreq_t mem;
    int i;

    cfg_mem = kmalloc(sizeof(struct smc_cfg_mem), GFP_KERNEL);
    if (!cfg_mem)
     return -ENOMEM;

    link->conf.Attributes |= CONF_ENABLE_SPKR;
    link->conf.Status = CCSR_AUDIO_ENA;
    link->irq.Attributes =
 IRQ_TYPE_DYNAMIC_SHARING|IRQ_FIRST_SHARED|IRQ_HANDLE_PRESENT;
    link->io.IOAddrLines = 16;
    link->io.Attributes2 = IO_DATA_PATH_WIDTH_8;
    link->io.NumPorts2 = 8;



    if (pcmcia_loop_config(link, mhz_mfc_config_check, ((void*)0)))
 goto free_cfg_mem;
    dev->base_addr = link->io.BasePort1;


    req.Attributes = WIN_DATA_WIDTH_8|WIN_MEMORY_TYPE_AM|WIN_ENABLE;
    req.Base = req.Size = 0;
    req.AccessSpeed = 0;
    i = pcmcia_request_window(&link, &req, &link->win);
    if (i != 0)
 goto free_cfg_mem;
    smc->base = ioremap(req.Base, req.Size);
    mem.CardOffset = mem.Page = 0;
    if (smc->manfid == MANFID_MOTOROLA)
 mem.CardOffset = link->conf.ConfigBase;
    i = pcmcia_map_mem_page(link->win, &mem);

    if ((i == 0)
 && (smc->manfid == MANFID_MEGAHERTZ)
 && (smc->cardid == PRODID_MEGAHERTZ_EM3288))
 mhz_3288_power(link);

free_cfg_mem:
    kfree(cfg_mem);
    return -ENODEV;
}
