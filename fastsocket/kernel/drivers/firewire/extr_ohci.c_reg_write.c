
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {scalar_t__ registers; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void reg_write(const struct fw_ohci *ohci, int offset, u32 data)
{
 writel(data, ohci->registers + offset);
}
