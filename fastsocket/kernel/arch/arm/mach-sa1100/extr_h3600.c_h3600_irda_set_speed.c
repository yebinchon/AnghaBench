
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IPAQ_EGPIO_IR_FSEL ;
 int assign_h3600_egpio (int ,int) ;

__attribute__((used)) static void h3600_irda_set_speed(struct device *dev, unsigned int speed)
{
 assign_h3600_egpio(IPAQ_EGPIO_IR_FSEL, !(speed < 4000000));
}
