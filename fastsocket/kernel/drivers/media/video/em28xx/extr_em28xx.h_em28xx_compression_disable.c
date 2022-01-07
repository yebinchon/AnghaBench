
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int dummy; } ;


 int EM28XX_R26_COMPR ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;

__attribute__((used)) static inline int em28xx_compression_disable(struct em28xx *dev)
{

 return em28xx_write_reg(dev, EM28XX_R26_COMPR, 0x00);
}
