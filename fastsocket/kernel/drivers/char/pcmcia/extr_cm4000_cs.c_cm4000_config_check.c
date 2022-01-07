
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int IOAddrLines; int Attributes1; int NumPorts1; int BasePort1; } ;
struct pcmcia_device {TYPE_4__ io; } ;
struct TYPE_8__ {int flags; TYPE_1__* win; int nwin; } ;
struct TYPE_9__ {TYPE_2__ io; } ;
typedef TYPE_3__ cistpl_cftable_entry_t ;
struct TYPE_7__ {int len; int base; } ;


 int CISTPL_IO_16BIT ;
 int CISTPL_IO_8BIT ;
 int CISTPL_IO_LINES_MASK ;
 int ENODEV ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_4__*) ;

__attribute__((used)) static int cm4000_config_check(struct pcmcia_device *p_dev,
          cistpl_cftable_entry_t *cfg,
          cistpl_cftable_entry_t *dflt,
          unsigned int vcc,
          void *priv_data)
{
 if (!cfg->io.nwin)
  return -ENODEV;


 p_dev->io.BasePort1 = cfg->io.win[0].base;
 p_dev->io.NumPorts1 = cfg->io.win[0].len;
 p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
 if (!(cfg->io.flags & CISTPL_IO_8BIT))
  p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_16;
 if (!(cfg->io.flags & CISTPL_IO_16BIT))
  p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 p_dev->io.IOAddrLines = cfg->io.flags & CISTPL_IO_LINES_MASK;

 return pcmcia_request_io(p_dev, &p_dev->io);
}
