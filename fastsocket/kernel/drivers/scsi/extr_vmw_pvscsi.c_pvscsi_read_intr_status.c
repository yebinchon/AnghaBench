
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {int dummy; } ;


 int PVSCSI_REG_OFFSET_INTR_STATUS ;
 int pvscsi_reg_read (struct pvscsi_adapter const*,int ) ;

__attribute__((used)) static u32 pvscsi_read_intr_status(const struct pvscsi_adapter *adapter)
{
 return pvscsi_reg_read(adapter, PVSCSI_REG_OFFSET_INTR_STATUS);
}
