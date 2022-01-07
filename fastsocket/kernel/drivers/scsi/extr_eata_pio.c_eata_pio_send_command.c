
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HA_CTRLREG ;
 unsigned char HA_CTRL_8HEADS ;
 scalar_t__ HA_RSTATUS ;
 int HA_SBUSY ;
 scalar_t__ HA_WCOMMAND ;
 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline unsigned int eata_pio_send_command(unsigned long base, unsigned char command)
{
 unsigned int loop = 50;

 while (inb(base + HA_RSTATUS) & HA_SBUSY)
  if (--loop == 0)
   return 1;





 outb(HA_CTRL_8HEADS, base + HA_CTRLREG);

 outb(command, base + HA_WCOMMAND);
 return 0;
}
