
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ixp23xx_irq_type { ____Placeholder_ixp23xx_irq_type } ixp23xx_irq_type ;


 int EINVAL ;
 unsigned int IRQ_IXP23XX_GPIO6 ;





 int* IXP23XX_GPIO_GPISR ;
 scalar_t__ IXP23XX_GPIO_GPIT1R ;
 scalar_t__ IXP23XX_GPIO_GPIT2R ;
 int IXP23XX_GPIO_STYLE_ACTIVE_HIGH ;
 int IXP23XX_GPIO_STYLE_ACTIVE_LOW ;
 int IXP23XX_GPIO_STYLE_FALLING_EDGE ;
 int IXP23XX_GPIO_STYLE_MASK ;
 int IXP23XX_GPIO_STYLE_RISING_EDGE ;
 int IXP23XX_GPIO_STYLE_SIZE ;
 int IXP23XX_GPIO_STYLE_TRANSITIONAL ;
 int IXP23XX_IRQ_EDGE ;
 int IXP23XX_IRQ_LEVEL ;
 int ixp23xx_config_irq (unsigned int,int) ;

__attribute__((used)) static int ixp23xx_irq_set_type(unsigned int irq, unsigned int type)
{
 int line = irq - IRQ_IXP23XX_GPIO6 + 6;
 u32 int_style;
 enum ixp23xx_irq_type irq_type;
 volatile u32 *int_reg;




 if (line < 6 || line > 15)
  return -EINVAL;

 switch (type) {
 case 132:
  int_style = IXP23XX_GPIO_STYLE_TRANSITIONAL;
  irq_type = IXP23XX_IRQ_EDGE;
  break;
 case 130:
  int_style = IXP23XX_GPIO_STYLE_RISING_EDGE;
  irq_type = IXP23XX_IRQ_EDGE;
  break;
 case 131:
  int_style = IXP23XX_GPIO_STYLE_FALLING_EDGE;
  irq_type = IXP23XX_IRQ_EDGE;
  break;
 case 129:
  int_style = IXP23XX_GPIO_STYLE_ACTIVE_HIGH;
  irq_type = IXP23XX_IRQ_LEVEL;
  break;
 case 128:
  int_style = IXP23XX_GPIO_STYLE_ACTIVE_LOW;
  irq_type = IXP23XX_IRQ_LEVEL;
  break;
 default:
  return -EINVAL;
 }

 ixp23xx_config_irq(irq, irq_type);

 if (line >= 8) {
  line -= 8;
  int_reg = (volatile u32 *)IXP23XX_GPIO_GPIT2R;
 } else {
  int_reg = (volatile u32 *)IXP23XX_GPIO_GPIT1R;
 }




 *IXP23XX_GPIO_GPISR = (1 << line);


 *int_reg &= ~(IXP23XX_GPIO_STYLE_MASK <<
   (line * IXP23XX_GPIO_STYLE_SIZE));


 *int_reg |= (int_style << (line * IXP23XX_GPIO_STYLE_SIZE));

 return 0;
}
