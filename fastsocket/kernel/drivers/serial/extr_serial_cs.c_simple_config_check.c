
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ BasePort1; int IOAddrLines; } ;
struct TYPE_9__ {int Vpp; } ;
struct pcmcia_device {TYPE_8__ io; TYPE_1__ conf; } ;
struct TYPE_12__ {scalar_t__ nwin; int flags; TYPE_3__* win; } ;
struct TYPE_10__ {int present; int* param; } ;
struct TYPE_13__ {TYPE_4__ io; TYPE_2__ vpp1; } ;
typedef TYPE_5__ cistpl_cftable_entry_t ;
struct TYPE_11__ {int const len; scalar_t__ base; } ;


 int CISTPL_IO_LINES_MASK ;
 int CISTPL_POWER_VNOM ;
 int EINVAL ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_8__*) ;

__attribute__((used)) static int simple_config_check(struct pcmcia_device *p_dev,
          cistpl_cftable_entry_t *cf,
          cistpl_cftable_entry_t *dflt,
          unsigned int vcc,
          void *priv_data)
{
 static const int size_table[2] = { 8, 16 };
 int *try = priv_data;

 if (cf->vpp1.present & (1 << CISTPL_POWER_VNOM))
  p_dev->conf.Vpp =
   cf->vpp1.param[CISTPL_POWER_VNOM] / 10000;

 if ((cf->io.nwin > 0) && (cf->io.win[0].len == size_table[(*try >> 1)])
     && (cf->io.win[0].base != 0)) {
  p_dev->io.BasePort1 = cf->io.win[0].base;
  p_dev->io.IOAddrLines = ((*try & 0x1) == 0) ?
   16 : cf->io.flags & CISTPL_IO_LINES_MASK;
  if (!pcmcia_request_io(p_dev, &p_dev->io))
   return 0;
 }
 return -EINVAL;
}
