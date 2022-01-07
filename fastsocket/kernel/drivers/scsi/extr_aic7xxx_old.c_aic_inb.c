
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {scalar_t__ base; scalar_t__ maddr; } ;


 unsigned char inb (scalar_t__) ;
 unsigned char readb (scalar_t__) ;

__attribute__((used)) static unsigned char
aic_inb(struct aic7xxx_host *p, long port)
{
  return(inb(p->base + port));

}
