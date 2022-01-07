
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int uartaddr; scalar_t__ ioaddr; } ;


 scalar_t__ XP_ADDR ;
 scalar_t__ XP_DATA ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void stl_sc26198setreg(struct stlport *portp, int regnr, int value)
{
 outb((regnr | portp->uartaddr), (portp->ioaddr + XP_ADDR));
 outb(value, (portp->ioaddr + XP_DATA));
}
