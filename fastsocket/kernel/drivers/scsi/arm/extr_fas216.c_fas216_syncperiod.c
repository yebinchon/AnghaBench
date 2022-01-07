
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int clockrate; } ;
struct TYPE_6__ {TYPE_1__ ifcfg; } ;
typedef TYPE_2__ FAS216_Info ;


 int fas216_checkmagic (TYPE_2__*) ;

__attribute__((used)) static int fas216_syncperiod(FAS216_Info *info, int ns)
{
 int value = (info->ifcfg.clockrate * ns) / 1000;

 fas216_checkmagic(info);

 if (value < 4)
  value = 4;
 else if (value > 35)
  value = 35;

 return value & 31;
}
