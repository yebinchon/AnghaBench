
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xPrimaryLpIndex; } ;
typedef int HvLpIndex ;


 TYPE_1__ itLpNaca ;

HvLpIndex HvLpConfig_getPrimaryLpIndex(void)
{
 return itLpNaca.xPrimaryLpIndex;
}
