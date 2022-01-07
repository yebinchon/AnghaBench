
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_26__ {int Attributes; scalar_t__ AccessSpeed; int Size; int Base; } ;
typedef TYPE_7__ win_req_t ;
struct TYPE_19__ {scalar_t__ NumPorts2; int BasePort2; int Attributes1; int Attributes2; scalar_t__ NumPorts1; int BasePort1; } ;
struct TYPE_23__ {int Vpp; int Attributes; int Status; } ;
struct pcmcia_device {int win; TYPE_15__ io; TYPE_4__ conf; } ;
struct TYPE_27__ {int CardOffset; scalar_t__ Page; } ;
typedef TYPE_8__ memreq_t ;
struct TYPE_28__ {scalar_t__ nwin; TYPE_6__* win; } ;
typedef TYPE_9__ cistpl_mem_t ;
struct TYPE_17__ {scalar_t__ nwin; int flags; TYPE_5__* win; } ;
typedef TYPE_10__ cistpl_io_t ;
struct TYPE_22__ {scalar_t__ IRQInfo1; } ;
struct TYPE_21__ {int present; int* param; } ;
struct TYPE_20__ {int present; int* param; } ;
struct TYPE_18__ {scalar_t__ index; int flags; TYPE_9__ mem; TYPE_10__ io; TYPE_3__ irq; TYPE_2__ vpp1; TYPE_1__ vcc; } ;
typedef TYPE_11__ cistpl_cftable_entry_t ;
struct TYPE_25__ {int card_addr; int len; int host_addr; } ;
struct TYPE_24__ {scalar_t__ len; int base; } ;


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
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_CM ;
 scalar_t__ pcmcia_map_mem_page (int ,TYPE_8__*) ;
 scalar_t__ pcmcia_request_io (struct pcmcia_device*,TYPE_15__*) ;
 scalar_t__ pcmcia_request_window (struct pcmcia_device**,TYPE_7__*,int *) ;

__attribute__((used)) static int sedlbauer_config_check(struct pcmcia_device *p_dev,
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



 if (cfg->vcc.present & (1<<CISTPL_POWER_VNOM)) {
  if (vcc != cfg->vcc.param[CISTPL_POWER_VNOM]/10000)
   return -ENODEV;
 } else if (dflt->vcc.present & (1<<CISTPL_POWER_VNOM)) {
  if (vcc != dflt->vcc.param[CISTPL_POWER_VNOM]/10000)
   return -ENODEV;
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

  if (pcmcia_request_io(p_dev, &p_dev->io) != 0)
   return -ENODEV;
 }
 if ((cfg->mem.nwin > 0) || (dflt->mem.nwin > 0)) {
  cistpl_mem_t *mem = (cfg->mem.nwin) ? &cfg->mem : &dflt->mem;
  memreq_t map;
  req->Attributes = WIN_DATA_WIDTH_16|WIN_MEMORY_TYPE_CM;
  req->Attributes |= WIN_ENABLE;
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
