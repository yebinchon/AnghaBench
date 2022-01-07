
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct controller {scalar_t__ creg; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 shpc_readl(struct controller *ctrl, int reg)
{
 return readl(ctrl->creg + reg);
}
