
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 omap24xxcam_reg_in(unsigned long base, u32 offset)
{
 return readl(base + offset);
}
