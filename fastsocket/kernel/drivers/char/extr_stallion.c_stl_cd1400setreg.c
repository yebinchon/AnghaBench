
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int uartaddr; scalar_t__ ioaddr; } ;


 scalar_t__ EREG_DATA ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void stl_cd1400setreg(struct stlport *portp, int regnr, int value)
{
 outb(regnr + portp->uartaddr, portp->ioaddr);
 outb(value, portp->ioaddr + EREG_DATA);
}
