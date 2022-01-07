
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_npar_func_cfg {int pci_func; int max_bw; int min_bw; } ;
struct qlcnic_adapter {int dummy; } ;


 int IS_VALID_BW (int ) ;
 int QL_STATUS_INVALID_PARAM ;
 scalar_t__ qlcnic_is_valid_nic_func (struct qlcnic_adapter*,int) ;

__attribute__((used)) static int validate_npar_config(struct qlcnic_adapter *adapter,
    struct qlcnic_npar_func_cfg *np_cfg,
    int count)
{
 u8 pci_func, i;

 for (i = 0; i < count; i++) {
  pci_func = np_cfg[i].pci_func;
  if (qlcnic_is_valid_nic_func(adapter, pci_func) < 0)
   return QL_STATUS_INVALID_PARAM;

  if (!IS_VALID_BW(np_cfg[i].min_bw) ||
      !IS_VALID_BW(np_cfg[i].max_bw))
   return QL_STATUS_INVALID_PARAM;
 }
 return 0;
}
