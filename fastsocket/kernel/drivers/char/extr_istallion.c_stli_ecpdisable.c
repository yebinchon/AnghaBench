
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlibrd {scalar_t__ iobase; } ;


 scalar_t__ ECP_ATCONFR ;
 int ECP_ATDISABLE ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void stli_ecpdisable(struct stlibrd *brdp)
{
 outb(ECP_ATDISABLE, (brdp->iobase + ECP_ATCONFR));
}
