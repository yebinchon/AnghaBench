
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int dummy; } ;


 int FLCMNCR (struct sh_flctl*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void flctl_register_init(struct sh_flctl *flctl, unsigned long val)
{
 writel(val, FLCMNCR(flctl));
}
