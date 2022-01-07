
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;


 int KERN_ERR ;
 int PRINT (int ,char*,char*) ;
 int mb () ;
 int reg_read (struct ti_ohci*,int) ;
 int reg_write (struct ti_ohci*,int,int) ;
 int udelay (int) ;

int ohci1394_stop_context(struct ti_ohci *ohci, int reg, char *msg)
{
 int i=0;


 reg_write(ohci, reg, 0x8000);


 while (reg_read(ohci, reg) & 0x400) {
  i++;
  if (i>5000) {
   PRINT(KERN_ERR,
         "Runaway loop while stopping context: %s...", msg ? msg : "");
   return 1;
  }

  mb();
  udelay(10);
 }
 if (msg) PRINT(KERN_ERR, "%s: dma prg stopped", msg);
 return 0;
}
