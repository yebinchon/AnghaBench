
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {int semaph; scalar_t__ addr; } ;


 int TSS_INT_PENDING ;
 scalar_t__ TUL_Int ;
 scalar_t__ TUL_Mask ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int tulip_main (struct initio_host*) ;

__attribute__((used)) static int initio_isr(struct initio_host * host)
{
 if (inb(host->addr + TUL_Int) & TSS_INT_PENDING) {
  if (host->semaph == 1) {
   outb(0x1F, host->addr + TUL_Mask);

   host->semaph = 0;

   tulip_main(host);

   host->semaph = 1;
   outb(0x0F, host->addr + TUL_Mask);
   return 1;
  }
 }
 return 0;
}
