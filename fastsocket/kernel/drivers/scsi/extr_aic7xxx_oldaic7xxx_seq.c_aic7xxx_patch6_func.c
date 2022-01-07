
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int flags; } ;


 int AHC_PAGESCBS ;

__attribute__((used)) static int
aic7xxx_patch6_func(struct aic7xxx_host *p)
{
 return ((p->flags & AHC_PAGESCBS) == 0);
}
