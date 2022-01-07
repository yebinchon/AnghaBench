
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {scalar_t__ ioaddr; scalar_t__ uartaddr; } ;


 scalar_t__ EREG_DATA ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static int stl_cd1400getreg(struct stlport *portp, int regnr)
{
 outb((regnr + portp->uartaddr), portp->ioaddr);
 return inb(portp->ioaddr + EREG_DATA);
}
