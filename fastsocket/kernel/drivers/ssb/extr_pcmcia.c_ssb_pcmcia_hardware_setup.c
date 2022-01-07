
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {scalar_t__ bustype; } ;


 scalar_t__ CISREG_COR ;
 scalar_t__ SSB_BUSTYPE_PCMCIA ;
 int ssb_pcmcia_cor_setup (struct ssb_bus*,scalar_t__) ;
 int ssb_pcmcia_switch_segment (struct ssb_bus*,int ) ;

int ssb_pcmcia_hardware_setup(struct ssb_bus *bus)
{
 int err;

 if (bus->bustype != SSB_BUSTYPE_PCMCIA)
  return 0;



 ssb_pcmcia_switch_segment(bus, 0);

 err = ssb_pcmcia_cor_setup(bus, CISREG_COR);
 if (err)
  return err;

 err = ssb_pcmcia_cor_setup(bus, CISREG_COR + 0x80);
 if (err)
  return err;

 return 0;
}
