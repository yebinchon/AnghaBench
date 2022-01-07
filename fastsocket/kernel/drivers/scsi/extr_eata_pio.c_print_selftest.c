
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EATA_CMD_PIO_SETUPTEST ;
 scalar_t__ HA_RDATA ;
 scalar_t__ HA_RSTATUS ;
 int HA_SBUSY ;
 int HA_SDRQ ;
 int HA_SERROR ;
 scalar_t__ HA_WCOMMAND ;
 int inb (scalar_t__) ;
 int insw (scalar_t__,unsigned char**,int) ;
 int outb (int ,scalar_t__) ;
 int printk (char*,...) ;

__attribute__((used)) static unsigned int print_selftest(unsigned int base)
{
 unsigned char buffer[512];




 printk("eata_pio: executing controller self test & setup...\n");
 while (inb(base + HA_RSTATUS) & HA_SBUSY);
 outb(EATA_CMD_PIO_SETUPTEST, base + HA_WCOMMAND);
 do {
  while (inb(base + HA_RSTATUS) & HA_SBUSY)
                 ;
  if (inb(base + HA_RSTATUS) & HA_SDRQ) {
   insw(base + HA_RDATA, &buffer, 256);






  }
 } while (inb(base + HA_RSTATUS) & (HA_SBUSY | HA_SDRQ));

 return (!(inb(base + HA_RSTATUS) & HA_SERROR));
}
