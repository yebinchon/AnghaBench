
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {int dummy; } ;


 int PVSCSI_REG_OFFSET_INTR_STATUS ;
 int pvscsi_reg_write (struct pvscsi_adapter const*,int ,int ) ;

__attribute__((used)) static void pvscsi_write_intr_status(const struct pvscsi_adapter *adapter,
         u32 val)
{
 pvscsi_reg_write(adapter, PVSCSI_REG_OFFSET_INTR_STATUS, val);
}
