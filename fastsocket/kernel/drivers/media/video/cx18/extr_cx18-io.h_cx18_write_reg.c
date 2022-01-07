
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18 {scalar_t__ reg_mem; } ;


 int cx18_writel (struct cx18*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cx18_write_reg(struct cx18 *cx, u32 val, u32 reg)
{
 cx18_writel(cx, val, cx->reg_mem + reg);
}
