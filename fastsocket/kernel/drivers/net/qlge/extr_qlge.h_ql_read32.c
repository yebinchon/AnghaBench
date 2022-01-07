
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {scalar_t__ reg_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 ql_read32(const struct ql_adapter *qdev, int reg)
{
 return readl(qdev->reg_base + reg);
}
