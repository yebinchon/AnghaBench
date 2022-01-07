
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int state; } ;


 int BUG_ON (int) ;
 int __IXGBE_SERVICE_SCHED ;
 int clear_bit (int ,int *) ;
 int smp_mb__before_clear_bit () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_service_event_complete(struct ixgbe_adapter *adapter)
{
 BUG_ON(!test_bit(__IXGBE_SERVICE_SCHED, &adapter->state));


 smp_mb__before_clear_bit();
 clear_bit(__IXGBE_SERVICE_SCHED, &adapter->state);
}
