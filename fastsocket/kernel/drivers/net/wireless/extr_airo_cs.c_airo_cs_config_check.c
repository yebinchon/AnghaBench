
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_23__ {int Attributes; scalar_t__ AccessSpeed; int Size; int Base; } ;
typedef TYPE_6__ win_req_t ;
struct TYPE_17__ {scalar_t__ NumPorts2; int BasePort2; int Attributes1; int Attributes2; scalar_t__ NumPorts1; int BasePort1; } ;
struct TYPE_20__ {int Vpp; int Attributes; int Status; } ;
struct pcmcia_device {int win; TYPE_12__ io; TYPE_3__ conf; } ;
struct TYPE_24__ {int CardOffset; scalar_t__ Page; } ;
typedef TYPE_7__ memreq_t ;
struct TYPE_25__ {scalar_t__ nwin; TYPE_5__* win; } ;
typedef TYPE_8__ cistpl_mem_t ;
struct TYPE_26__ {scalar_t__ nwin; int flags; TYPE_4__* win; } ;
typedef TYPE_9__ cistpl_io_t ;
struct TYPE_19__ {scalar_t__ IRQInfo1; } ;
struct TYPE_18__ {int present; int* param; } ;
struct TYPE_16__ {scalar_t__ index; int flags; TYPE_8__ mem; TYPE_9__ io; TYPE_2__ irq; TYPE_1__ vpp1; } ;
typedef TYPE_10__ cistpl_cftable_entry_t ;
struct TYPE_22__ {int card_addr; int len; int host_addr; } ;
struct TYPE_21__ {scalar_t__ len; int base; } ;


 int CCSR_AUDIO_ENA ;
 int CISTPL_CFTABLE_AUDIO ;
 int CISTPL_IO_16BIT ;
 int CISTPL_IO_8BIT ;
 int CISTPL_POWER_VNOM ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_SPKR ;
 int ENODEV ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int WIN_DATA_WIDTH_16 ;
 int WIN_MEMORY_TYPE_CM ;
 scalar_t__ pcmcia_map_mem_page (int ,TYPE_7__*) ;
 scalar_t__ pcmcia_request_io (struct pcmcia_device*,TYPE_12__*) ;
 scalar_t__ pcmcia_request_window (struct pcmcia_device**,TYPE_6__*,int *) ;

__attribute__((used)) static int airo_cs_config_check(struct pcmcia_device *p_dev,
    cistpl_cftable_entry_t *cfg,
    cistpl_cftable_entry_t *dflt,
    unsigned int vcc,
    void *priv_data)
{
 win_req_t *req = priv_data;

 if (cfg->index == 0)
  return -ENODEV;


 if (cfg->flags & CISTPL_CFTABLE_AUDIO) {
  p_dev->conf.Attributes |= CONF_ENABLE_SPKR;
  p_dev->conf.Status = CCSR_AUDIO_ENA;
 }



 if (cfg->vpp1.present & (1<<CISTPL_POWER_VNOM))
  p_dev->conf.Vpp = cfg->vpp1.param[CISTPL_POWER_VNOM]/10000;
 else if (dflt->vpp1.present & (1<<CISTPL_POWER_VNOM))
  p_dev->conf.Vpp = dflt->vpp1.param[CISTPL_POWER_VNOM]/10000;


 if (cfg->irq.IRQInfo1 || dflt->irq.IRQInfo1)
  p_dev->conf.Attributes |= CONF_ENABLE_IRQ;


 p_dev->io.NumPorts1 = p_dev->io.NumPorts2 = 0;
 if ((cfg->io.nwin > 0) || (dflt->io.nwin > 0)) {
  cistpl_io_t *io = (cfg->io.nwin) ? &cfg->io : &dflt->io;
  p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
  if (!(io->flags & CISTPL_IO_8BIT))
   p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_16;
  if (!(io->flags & CISTPL_IO_16BIT))
   p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
  p_dev->io.BasePort1 = io->win[0].base;
  p_dev->io.NumPorts1 = io->win[0].len;
  if (io->nwin > 1) {
   p_dev->io.Attributes2 = p_dev->io.Attributes1;
   p_dev->io.BasePort2 = io->win[1].base;
   p_dev->io.NumPorts2 = io->win[1].len;
  }
 }


 if (pcmcia_request_io(p_dev, &p_dev->io) != 0)
  return -ENODEV;
 if ((cfg->mem.nwin > 0) || (dflt->mem.nwin > 0)) {
  cistpl_mem_t *mem = (cfg->mem.nwin) ? &cfg->mem : &dflt->mem;
  memreq_t map;
  req->Attributes = WIN_DATA_WIDTH_16|WIN_MEMORY_TYPE_CM;
  req->Base = mem->win[0].host_addr;
  req->Size = mem->win[0].len;
  req->AccessSpeed = 0;
  if (pcmcia_request_window(&p_dev, req, &p_dev->win) != 0)
   return -ENODEV;
  map.Page = 0;
  map.CardOffset = mem->win[0].card_addr;
  if (pcmcia_map_mem_page(p_dev->win, &map) != 0)
   return -ENODEV;
 }

 return 0;
}
