
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IR_OFF ;
 int IR_SIRMODE ;
 int TOSA_GPIO_IRDA_TX ;
 int TOSA_GPIO_IR_POWERDWN ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int tosa_irda_transceiver_mode (struct device*,int) ;

__attribute__((used)) static int tosa_irda_startup(struct device *dev)
{
 int ret;

 ret = gpio_request(TOSA_GPIO_IRDA_TX, "IrDA TX");
 if (ret)
  goto err_tx;
 ret = gpio_direction_output(TOSA_GPIO_IRDA_TX, 0);
 if (ret)
  goto err_tx_dir;

 ret = gpio_request(TOSA_GPIO_IR_POWERDWN, "IrDA powerdown");
 if (ret)
  goto err_pwr;

 ret = gpio_direction_output(TOSA_GPIO_IR_POWERDWN, 0);
 if (ret)
  goto err_pwr_dir;

 tosa_irda_transceiver_mode(dev, IR_SIRMODE | IR_OFF);

 return 0;

err_pwr_dir:
 gpio_free(TOSA_GPIO_IR_POWERDWN);
err_pwr:
err_tx_dir:
 gpio_free(TOSA_GPIO_IRDA_TX);
err_tx:
 return ret;
}
