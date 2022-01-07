
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlibrd {unsigned long memaddr; scalar_t__ iobase; } ;


 unsigned long ECP_ATADDRMASK ;
 unsigned long ECP_ATADDRSHFT ;
 scalar_t__ ECP_ATCONFR ;
 unsigned long ECP_ATDISABLE ;
 scalar_t__ ECP_ATMEMAR ;
 unsigned long ECP_ATSTOP ;
 int outb (unsigned long,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void stli_ecpinit(struct stlibrd *brdp)
{
 unsigned long memconf;

 outb(ECP_ATSTOP, (brdp->iobase + ECP_ATCONFR));
 udelay(10);
 outb(ECP_ATDISABLE, (brdp->iobase + ECP_ATCONFR));
 udelay(100);

 memconf = (brdp->memaddr & ECP_ATADDRMASK) >> ECP_ATADDRSHFT;
 outb(memconf, (brdp->iobase + ECP_ATMEMAR));
}
