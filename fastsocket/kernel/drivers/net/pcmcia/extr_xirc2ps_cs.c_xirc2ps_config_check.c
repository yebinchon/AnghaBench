
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int BasePort2; int BasePort1; } ;
struct pcmcia_device {TYPE_6__ io; } ;
struct TYPE_8__ {scalar_t__ nwin; TYPE_1__* win; } ;
struct TYPE_9__ {int index; TYPE_2__ io; } ;
typedef TYPE_3__ cistpl_cftable_entry_t ;
struct TYPE_7__ {int base; } ;


 int ENODEV ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_6__*) ;

__attribute__((used)) static int
xirc2ps_config_check(struct pcmcia_device *p_dev,
       cistpl_cftable_entry_t *cf,
       cistpl_cftable_entry_t *dflt,
       unsigned int vcc,
       void *priv_data)
{
 int *pass = priv_data;

 if (cf->io.nwin > 0 && (cf->io.win[0].base & 0xf) == 8) {
  p_dev->io.BasePort2 = cf->io.win[0].base;
  p_dev->io.BasePort1 = p_dev->io.BasePort2
   + (*pass ? (cf->index & 0x20 ? -24:8)
      : (cf->index & 0x20 ? 8:-24));
  if (!pcmcia_request_io(p_dev, &p_dev->io))
   return 0;
 }
 return -ENODEV;

}
