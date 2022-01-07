
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ixp4xx_irq_type { ____Placeholder_ixp4xx_irq_type } ixp4xx_irq_type ;


 int EINVAL ;





 int* IXP4XX_GPIO_GPISR ;
 int* IXP4XX_GPIO_GPIT1R ;
 int* IXP4XX_GPIO_GPIT2R ;
 int IXP4XX_GPIO_IN ;
 int IXP4XX_GPIO_STYLE_ACTIVE_HIGH ;
 int IXP4XX_GPIO_STYLE_ACTIVE_LOW ;
 int IXP4XX_GPIO_STYLE_CLEAR ;
 int IXP4XX_GPIO_STYLE_FALLING_EDGE ;
 int IXP4XX_GPIO_STYLE_RISING_EDGE ;
 int IXP4XX_GPIO_STYLE_SIZE ;
 int IXP4XX_GPIO_STYLE_TRANSITIONAL ;
 int IXP4XX_IRQ_EDGE ;
 int IXP4XX_IRQ_LEVEL ;
 int gpio_line_config (int,int ) ;
 int* irq2gpio ;
 int ixp4xx_irq_edge ;

__attribute__((used)) static int ixp4xx_set_irq_type(unsigned int irq, unsigned int type)
{
 int line = irq2gpio[irq];
 u32 int_style;
 enum ixp4xx_irq_type irq_type;
 volatile u32 *int_reg;




 if (line < 0)
  return -EINVAL;

 switch (type){
 case 132:
  int_style = IXP4XX_GPIO_STYLE_TRANSITIONAL;
  irq_type = IXP4XX_IRQ_EDGE;
  break;
 case 130:
  int_style = IXP4XX_GPIO_STYLE_RISING_EDGE;
  irq_type = IXP4XX_IRQ_EDGE;
  break;
 case 131:
  int_style = IXP4XX_GPIO_STYLE_FALLING_EDGE;
  irq_type = IXP4XX_IRQ_EDGE;
  break;
 case 129:
  int_style = IXP4XX_GPIO_STYLE_ACTIVE_HIGH;
  irq_type = IXP4XX_IRQ_LEVEL;
  break;
 case 128:
  int_style = IXP4XX_GPIO_STYLE_ACTIVE_LOW;
  irq_type = IXP4XX_IRQ_LEVEL;
  break;
 default:
  return -EINVAL;
 }

 if (irq_type == IXP4XX_IRQ_EDGE)
  ixp4xx_irq_edge |= (1 << irq);
 else
  ixp4xx_irq_edge &= ~(1 << irq);

 if (line >= 8) {
  line -= 8;
  int_reg = IXP4XX_GPIO_GPIT2R;
 } else {
  int_reg = IXP4XX_GPIO_GPIT1R;
 }


 *int_reg &= ~(IXP4XX_GPIO_STYLE_CLEAR <<
       (line * IXP4XX_GPIO_STYLE_SIZE));

 *IXP4XX_GPIO_GPISR = (1 << line);


 *int_reg |= (int_style << (line * IXP4XX_GPIO_STYLE_SIZE));


 gpio_line_config(irq2gpio[irq], IXP4XX_GPIO_IN);

 return 0;
}
