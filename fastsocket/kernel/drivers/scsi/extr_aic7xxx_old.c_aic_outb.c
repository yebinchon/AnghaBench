
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {scalar_t__ base; scalar_t__ maddr; } ;


 scalar_t__ HCNTRL ;
 int mb () ;
 int outb (unsigned char,scalar_t__) ;
 int readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void
aic_outb(struct aic7xxx_host *p, unsigned char val, long port)
{
  outb(val, p->base + port);
  mb();

}
