
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {scalar_t__ ioaddr; } ;


 scalar_t__ XP_ADDR ;
 scalar_t__ XP_DATA ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int stl_sc26198getglobreg(struct stlport *portp, int regnr)
{
 outb(regnr, (portp->ioaddr + XP_ADDR));
 return inb(portp->ioaddr + XP_DATA);
}
