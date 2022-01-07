
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;


 int __QLCNIC_DIAG_MODE ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline int qlcnic_get_diag_lock(struct qlcnic_adapter *adapter)
{
 return test_and_set_bit(__QLCNIC_DIAG_MODE, &adapter->state);
}
