
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ suspend_count; } ;
struct isci_remote_device {TYPE_1__ rnc; } ;


 scalar_t__ sci_remote_node_context_is_being_destroyed (TYPE_1__*) ;
 int smp_rmb () ;

__attribute__((used)) static bool isci_compare_suspendcount(
 struct isci_remote_device *idev,
 u32 localcount)
{
 smp_rmb();




 return (localcount != idev->rnc.suspend_count)
     || sci_remote_node_context_is_being_destroyed(&idev->rnc);
}
