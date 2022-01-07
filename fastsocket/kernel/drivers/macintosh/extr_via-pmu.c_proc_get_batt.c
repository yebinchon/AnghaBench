
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int flags; int charge; int max_charge; int amperage; int voltage; int time_remaining; } ;


 TYPE_1__* pmu_batteries ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
proc_get_batt(char *page, char **start, off_t off,
  int count, int *eof, void *data)
{
 long batnum = (long)data;
 char *p = page;

 p += sprintf(p, "\n");
 p += sprintf(p, "flags      : %08x\n",
  pmu_batteries[batnum].flags);
 p += sprintf(p, "charge     : %d\n",
  pmu_batteries[batnum].charge);
 p += sprintf(p, "max_charge : %d\n",
  pmu_batteries[batnum].max_charge);
 p += sprintf(p, "current    : %d\n",
  pmu_batteries[batnum].amperage);
 p += sprintf(p, "voltage    : %d\n",
  pmu_batteries[batnum].voltage);
 p += sprintf(p, "time rem.  : %d\n",
  pmu_batteries[batnum].time_remaining);

 return p - page;
}
