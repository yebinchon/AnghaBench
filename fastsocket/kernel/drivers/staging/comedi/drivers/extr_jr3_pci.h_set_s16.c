
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int s16 ;


 int writel (int ,int volatile*) ;

__attribute__((used)) static inline void set_s16(volatile s32 * p, s16 val)
{
 writel(val, p);
}
