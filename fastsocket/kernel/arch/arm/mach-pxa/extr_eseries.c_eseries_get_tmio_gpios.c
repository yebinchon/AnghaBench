
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_ESERIES_TMIO_PCLR ;
 int GPIO_ESERIES_TMIO_SUSPEND ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,int *) ;

void eseries_get_tmio_gpios(void)
{
 gpio_request(GPIO_ESERIES_TMIO_SUSPEND, ((void*)0));
 gpio_request(GPIO_ESERIES_TMIO_PCLR, ((void*)0));
 gpio_direction_output(GPIO_ESERIES_TMIO_SUSPEND, 0);
 gpio_direction_output(GPIO_ESERIES_TMIO_PCLR, 0);
}
