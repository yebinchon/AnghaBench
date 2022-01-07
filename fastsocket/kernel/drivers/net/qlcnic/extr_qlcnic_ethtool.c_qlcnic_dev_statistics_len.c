
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_statistics () ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_statistics () ;

__attribute__((used)) static int qlcnic_dev_statistics_len(struct qlcnic_adapter *adapter)
{
 if (qlcnic_82xx_check(adapter))
  return qlcnic_82xx_statistics();
 else if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_statistics();
 else
  return -1;
}
