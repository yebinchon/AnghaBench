
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_ress {int gpio; int dir; int init; int desc; } ;


 int gpio_direction_input (int) ;
 int gpio_direction_output (int,int ) ;
 int gpio_free (int) ;
 int gpio_request (int,int ) ;
 int pr_err (char*,int,int ,int) ;

__attribute__((used)) static int hx4700_gpio_request(struct gpio_ress *gpios, int size)
{
 int i, rc = 0;
 int gpio;
 int dir;

 for (i = 0; (!rc) && (i < size); i++) {
  gpio = gpios[i].gpio;
  dir = gpios[i].dir;
  rc = gpio_request(gpio, gpios[i].desc);
  if (rc) {
   pr_err("Error requesting GPIO %d(%s) : %d\n",
          gpio, gpios[i].desc, rc);
   continue;
  }
  if (dir)
   gpio_direction_output(gpio, gpios[i].init);
  else
   gpio_direction_input(gpio);
 }
 while ((rc) && (--i >= 0))
  gpio_free(gpios[i].gpio);
 return rc;
}
