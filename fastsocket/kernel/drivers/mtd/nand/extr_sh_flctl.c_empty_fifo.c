
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int dummy; } ;


 int FLINTDMACR (struct sh_flctl*) ;
 int writel (int,int ) ;

__attribute__((used)) static void empty_fifo(struct sh_flctl *flctl)
{
 writel(0x000c0000, FLINTDMACR(flctl));
 writel(0x00000000, FLINTDMACR(flctl));
}
