
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int portnum; int ahw; } ;


 int QLCRDX (int ,int ) ;
 int QLCWRX (int ,int ,int) ;
 int QLC_83XX_IDC_MINOR_VERSION ;
 int QLC_83XX_IDC_MIN_VERSION ;

__attribute__((used)) static void qlcnic_83xx_idc_update_minor_version(struct qlcnic_adapter *adapter)
{
 u32 val;

 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_MIN_VERSION);
 val = val & ~(0x3 << (adapter->portnum * 2));
 val = val | (QLC_83XX_IDC_MINOR_VERSION << (adapter->portnum * 2));
 QLCWRX(adapter->ahw, QLC_83XX_IDC_MIN_VERSION, val);
}
