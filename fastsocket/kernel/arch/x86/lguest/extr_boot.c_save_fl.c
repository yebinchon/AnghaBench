
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long irq_enabled; } ;


 TYPE_1__ lguest_data ;

__attribute__((used)) static unsigned long save_fl(void)
{
 return lguest_data.irq_enabled;
}
