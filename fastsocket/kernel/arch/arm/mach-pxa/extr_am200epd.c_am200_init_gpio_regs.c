
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metronomefb_par {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int ERR_GPIO_PIN ;
 int LED_GPIO_PIN ;
 int PCBPWR_GPIO_PIN ;
 int RDY_GPIO_PIN ;
 int RST_GPIO_PIN ;
 int STDBY_GPIO_PIN ;
 TYPE_1__* am200_device ;
 int dev_err (int *,char*,int ,int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int * gpio_names ;
 int gpio_request (int ,int ) ;
 int * gpios ;

__attribute__((used)) static int am200_init_gpio_regs(struct metronomefb_par *par)
{
 int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(gpios); i++) {
  err = gpio_request(gpios[i], gpio_names[i]);
  if (err) {
   dev_err(&am200_device->dev, "failed requesting "
    "gpio %s, err=%d\n", gpio_names[i], err);
   goto err_req_gpio;
  }
 }

 gpio_direction_output(LED_GPIO_PIN, 0);
 gpio_direction_output(STDBY_GPIO_PIN, 0);
 gpio_direction_output(RST_GPIO_PIN, 0);

 gpio_direction_input(RDY_GPIO_PIN);
 gpio_direction_input(ERR_GPIO_PIN);

 gpio_direction_output(PCBPWR_GPIO_PIN, 0);

 return 0;

err_req_gpio:
 while (i > 0)
  gpio_free(gpios[i--]);

 return err;
}
