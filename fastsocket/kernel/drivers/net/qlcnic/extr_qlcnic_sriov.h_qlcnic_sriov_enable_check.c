
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;


 int __QLCNIC_SRIOV_ENABLE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool qlcnic_sriov_enable_check(struct qlcnic_adapter *adapter)
{
 return test_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state) ? 1 : 0;
}
