
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_bus {int dummy; } ;


 int SSB_PCMCIA_SPROM_SIZE ;
 int ssb_pcmcia_sprom_read (struct ssb_bus*,int,int *) ;

__attribute__((used)) static int ssb_pcmcia_sprom_read_all(struct ssb_bus *bus, u16 *sprom)
{
 int err, i;

 for (i = 0; i < SSB_PCMCIA_SPROM_SIZE; i++) {
  err = ssb_pcmcia_sprom_read(bus, i, &sprom[i]);
  if (err)
   return err;
 }

 return 0;
}
