
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_bus {int dummy; } ;


 int ETIMEDOUT ;
 int SSB_PCMCIA_SPROMCTL ;
 int SSB_PCMCIA_SPROMCTL_DONE ;
 int ssb_pcmcia_cfg_read (struct ssb_bus*,int ,int*) ;
 int ssb_pcmcia_cfg_write (struct ssb_bus*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ssb_pcmcia_sprom_command(struct ssb_bus *bus, u8 command)
{
 unsigned int i;
 int err;
 u8 value;

 err = ssb_pcmcia_cfg_write(bus, SSB_PCMCIA_SPROMCTL, command);
 if (err)
  return err;
 for (i = 0; i < 1000; i++) {
  err = ssb_pcmcia_cfg_read(bus, SSB_PCMCIA_SPROMCTL, &value);
  if (err)
   return err;
  if (value & SSB_PCMCIA_SPROMCTL_DONE)
   return 0;
  udelay(10);
 }

 return -ETIMEDOUT;
}
