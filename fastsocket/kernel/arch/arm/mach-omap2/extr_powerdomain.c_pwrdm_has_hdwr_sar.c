
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int flags; } ;


 int PWRDM_HAS_HDWR_SAR ;

bool pwrdm_has_hdwr_sar(struct powerdomain *pwrdm)
{
 return (pwrdm && pwrdm->flags & PWRDM_HAS_HDWR_SAR) ? 1 : 0;
}
