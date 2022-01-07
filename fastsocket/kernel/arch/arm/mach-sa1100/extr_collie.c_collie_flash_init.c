
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLLIE_GPIO_VPEN ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int collie_flash_init(void)
{
 int rc = gpio_request(COLLIE_GPIO_VPEN, "flash Vpp enable");
 if (rc)
  return rc;

 rc = gpio_direction_output(COLLIE_GPIO_VPEN, 1);
 if (rc)
  gpio_free(COLLIE_GPIO_VPEN);

 return rc;
}
