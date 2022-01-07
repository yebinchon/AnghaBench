
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int uartaddr; scalar_t__ ioaddr; } ;


 scalar_t__ EREG_DATA ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int stl_cd1400updatereg(struct stlport *portp, int regnr, int value)
{
 outb(regnr + portp->uartaddr, portp->ioaddr);
 if (inb(portp->ioaddr + EREG_DATA) != value) {
  outb(value, portp->ioaddr + EREG_DATA);
  return 1;
 }
 return 0;
}
