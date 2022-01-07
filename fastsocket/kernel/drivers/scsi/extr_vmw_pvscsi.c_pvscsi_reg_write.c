
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pvscsi_adapter {scalar_t__ mmioBase; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void pvscsi_reg_write(const struct pvscsi_adapter *adapter,
        u32 offset, u32 val)
{
 writel(val, adapter->mmioBase + offset);
}
