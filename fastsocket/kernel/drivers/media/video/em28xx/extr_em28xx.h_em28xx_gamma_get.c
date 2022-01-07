
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int dummy; } ;


 int EM28XX_R14_GAMMA ;
 int em28xx_read_reg (struct em28xx*,int ) ;

__attribute__((used)) static inline int em28xx_gamma_get(struct em28xx *dev)
{
 return em28xx_read_reg(dev, EM28XX_R14_GAMMA) & 0x3f;
}
