
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ssb_bus {int dummy; } ;


 int SSB_PCMCIA_SPROMCTL_READ ;
 int SSB_PCMCIA_SPROM_ADDRHI ;
 int SSB_PCMCIA_SPROM_ADDRLO ;
 int SSB_PCMCIA_SPROM_DATAHI ;
 int SSB_PCMCIA_SPROM_DATALO ;
 int ssb_pcmcia_cfg_read (struct ssb_bus*,int ,int*) ;
 int ssb_pcmcia_cfg_write (struct ssb_bus*,int ,int) ;
 int ssb_pcmcia_sprom_command (struct ssb_bus*,int ) ;

__attribute__((used)) static int ssb_pcmcia_sprom_read(struct ssb_bus *bus, u16 offset, u16 *value)
{
 int err;
 u8 lo, hi;

 offset *= 2;

 err = ssb_pcmcia_cfg_write(bus, SSB_PCMCIA_SPROM_ADDRLO,
       (offset & 0x00FF));
 if (err)
  return err;
 err = ssb_pcmcia_cfg_write(bus, SSB_PCMCIA_SPROM_ADDRHI,
       (offset & 0xFF00) >> 8);
 if (err)
  return err;
 err = ssb_pcmcia_sprom_command(bus, SSB_PCMCIA_SPROMCTL_READ);
 if (err)
  return err;
 err = ssb_pcmcia_cfg_read(bus, SSB_PCMCIA_SPROM_DATALO, &lo);
 if (err)
  return err;
 err = ssb_pcmcia_cfg_read(bus, SSB_PCMCIA_SPROM_DATAHI, &hi);
 if (err)
  return err;
 *value = (lo | (((u16)hi) << 8));

 return 0;
}
