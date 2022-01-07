
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct set_mtrr_data {unsigned int smp_reg; int smp_type; int smp_size; int smp_base; } ;
struct TYPE_2__ {int (* set_all ) () ;int (* set ) (unsigned int,int ,int ,int ) ;} ;


 int cpu_online (int ) ;
 scalar_t__ mtrr_aps_delayed_init ;
 TYPE_1__* mtrr_if ;
 int smp_processor_id () ;
 int stub1 (unsigned int,int ,int ,int ) ;
 int stub2 () ;

__attribute__((used)) static int mtrr_rendezvous_handler(void *info)
{
 return 0;
}
