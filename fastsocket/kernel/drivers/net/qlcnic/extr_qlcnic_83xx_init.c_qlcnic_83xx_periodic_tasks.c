
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fnum; } ;
struct qlcnic_adapter {TYPE_1__ fhash; } ;


 int qlcnic_prune_lb_filters (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_83xx_periodic_tasks(struct qlcnic_adapter *adapter)
{
 if (adapter->fhash.fnum)
  qlcnic_prune_lb_filters(adapter);
}
