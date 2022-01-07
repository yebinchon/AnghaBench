
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_ohci {scalar_t__ registers; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 reg_read(const struct ti_ohci *ohci, int offset)
{
        return readl(ohci->registers + offset);
}
