
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_lynx {scalar_t__ registers; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void reg_write(const struct ti_lynx *lynx, int offset, u32 data)
{
        writel(data, lynx->registers + offset);
}
