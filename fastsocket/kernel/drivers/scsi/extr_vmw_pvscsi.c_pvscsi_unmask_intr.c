
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {scalar_t__ use_msg; } ;


 int PVSCSI_INTR_CMPL_MASK ;
 int PVSCSI_INTR_MSG_MASK ;
 int PVSCSI_REG_OFFSET_INTR_MASK ;
 int pvscsi_reg_write (struct pvscsi_adapter const*,int ,int ) ;

__attribute__((used)) static void pvscsi_unmask_intr(const struct pvscsi_adapter *adapter)
{
 u32 intr_bits;

 intr_bits = PVSCSI_INTR_CMPL_MASK;
 if (adapter->use_msg)
  intr_bits |= PVSCSI_INTR_MSG_MASK;

 pvscsi_reg_write(adapter, PVSCSI_REG_OFFSET_INTR_MASK, intr_bits);
}
