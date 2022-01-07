
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct em28xx {int dummy; } ;
typedef int s32 ;


 int EM28XX_R24_VOFFSET ;
 int em28xx_write_regs (struct em28xx*,int ,int *,int) ;

__attribute__((used)) static inline int em28xx_v_balance_set(struct em28xx *dev, s32 val)
{
 u8 tmp = (u8) val;
 return em28xx_write_regs(dev, EM28XX_R24_VOFFSET, &tmp, 1);
}
