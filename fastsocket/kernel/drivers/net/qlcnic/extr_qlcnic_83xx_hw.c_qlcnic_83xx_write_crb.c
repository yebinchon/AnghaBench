
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;
typedef scalar_t__ loff_t ;


 int memcpy (int *,char*,size_t) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;

void qlcnic_83xx_write_crb(struct qlcnic_adapter *adapter, char *buf,
      loff_t offset, size_t size)
{
 u32 data;

 memcpy(&data, buf, size);
 qlcnic_83xx_wrt_reg_indirect(adapter, (u32) offset, data);
}
