
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int bugs; } ;


 int AHC_BUG_SCBCHAN_UPLOAD ;

__attribute__((used)) static int
aic7xxx_patch15_func(struct aic7xxx_host *p)
{
 return ((p->bugs & AHC_BUG_SCBCHAN_UPLOAD) != 0);
}
