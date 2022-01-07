
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_DEV_INFO_SIZE ;
 int QLCRD32 (struct qlcnic_adapter*,int) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int) ;
 int* diag_registers ;
 int* ext_diag_registers ;

__attribute__((used)) static int qlcnic_82xx_get_registers(struct qlcnic_adapter *adapter,
         u32 *regs_buff)
{
 int i, j = 0;

 for (i = QLCNIC_DEV_INFO_SIZE + 1; diag_registers[j] != -1; j++, i++)
  regs_buff[i] = QLC_SHARED_REG_RD32(adapter, diag_registers[j]);
 j = 0;
 while (ext_diag_registers[j] != -1)
  regs_buff[i++] = QLCRD32(adapter, ext_diag_registers[j++]);
 return i;
}
