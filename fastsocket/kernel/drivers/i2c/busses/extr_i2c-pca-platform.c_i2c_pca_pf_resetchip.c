
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pca_pf_data {int gpio; } ;


 int gpio_set_value (int ,int) ;
 int ndelay (int) ;

__attribute__((used)) static void i2c_pca_pf_resetchip(void *pd)
{
 struct i2c_pca_pf_data *i2c = pd;

 gpio_set_value(i2c->gpio, 0);
 ndelay(100);
 gpio_set_value(i2c->gpio, 1);
}
