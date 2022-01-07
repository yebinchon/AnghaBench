
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct controller {scalar_t__ creg; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void shpc_writel(struct controller *ctrl, int reg, u32 val)
{
 writel(val, ctrl->creg + reg);
}
