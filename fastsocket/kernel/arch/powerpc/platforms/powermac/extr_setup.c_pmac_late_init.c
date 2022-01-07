
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * progress; } ;


 scalar_t__ initializing ;
 TYPE_1__ ppc_md ;

__attribute__((used)) static int pmac_late_init(void)
{
 initializing = 0;


 ppc_md.progress = ((void*)0);
 return 0;
}
