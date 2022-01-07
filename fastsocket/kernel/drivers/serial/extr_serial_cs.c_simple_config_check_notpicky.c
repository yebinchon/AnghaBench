
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int BasePort1; int IOAddrLines; } ;
struct pcmcia_device {TYPE_5__ io; } ;
struct TYPE_6__ {scalar_t__ nwin; int flags; } ;
struct TYPE_7__ {TYPE_1__ io; } ;
typedef TYPE_2__ cistpl_cftable_entry_t ;


 int CISTPL_IO_LINES_MASK ;
 int ENODEV ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_5__*) ;

__attribute__((used)) static int simple_config_check_notpicky(struct pcmcia_device *p_dev,
     cistpl_cftable_entry_t *cf,
     cistpl_cftable_entry_t *dflt,
     unsigned int vcc,
     void *priv_data)
{
 static const unsigned int base[5] = { 0x3f8, 0x2f8, 0x3e8, 0x2e8, 0x0 };
 int j;

 if ((cf->io.nwin > 0) && ((cf->io.flags & CISTPL_IO_LINES_MASK) <= 3)) {
  for (j = 0; j < 5; j++) {
   p_dev->io.BasePort1 = base[j];
   p_dev->io.IOAddrLines = base[j] ? 16 : 3;
   if (!pcmcia_request_io(p_dev, &p_dev->io))
    return 0;
  }
 }
 return -ENODEV;
}
