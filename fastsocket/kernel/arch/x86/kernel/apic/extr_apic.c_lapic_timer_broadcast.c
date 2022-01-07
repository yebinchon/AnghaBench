
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* send_IPI_mask ) (struct cpumask const*,int ) ;} ;


 int LOCAL_TIMER_VECTOR ;
 TYPE_1__* apic ;
 int stub1 (struct cpumask const*,int ) ;

__attribute__((used)) static void lapic_timer_broadcast(const struct cpumask *mask)
{



}
