
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int writel (int ,int volatile*) ;

__attribute__((used)) static inline void set_u16(volatile u32 * p, u16 val)
{
 writel(val, p);
}
