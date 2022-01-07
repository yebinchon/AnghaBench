
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18 {scalar_t__ reg_mem; } ;


 scalar_t__ cx18_readl (struct cx18*,scalar_t__) ;

__attribute__((used)) static inline u32 cx18_read_reg(struct cx18 *cx, u32 reg)
{
 return cx18_readl(cx, cx->reg_mem + reg);
}
