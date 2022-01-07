
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v3020 {int dummy; } ;
struct TYPE_3__ {int gpio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int gpio_free (int ) ;
 TYPE_1__* v3020_gpio ;

__attribute__((used)) static void v3020_gpio_unmap(struct v3020 *chip)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(v3020_gpio); i++)
  gpio_free(v3020_gpio[i].gpio);
}
