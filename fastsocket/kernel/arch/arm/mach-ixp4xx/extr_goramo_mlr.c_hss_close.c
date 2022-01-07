
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL_HSS0_DTR_N ;
 int CONTROL_HSS1_DTR_N ;
 int GPIO_HSS0_DCD_N ;
 int GPIO_HSS0_RTS_N ;
 int GPIO_HSS1_DCD_N ;
 int GPIO_HSS1_RTS_N ;
 int free_irq (int ,void*) ;
 int gpio_irq (int ) ;
 int gpio_line_set (int ,int) ;
 int output_control () ;
 int ** set_carrier_cb_tab ;
 int set_control (int ,int) ;

__attribute__((used)) static void hss_close(int port, void *pdev)
{
 free_irq(port ? gpio_irq(GPIO_HSS1_DCD_N) : gpio_irq(GPIO_HSS0_DCD_N),
   pdev);
 set_carrier_cb_tab[!!port] = ((void*)0);

 set_control(port ? CONTROL_HSS1_DTR_N : CONTROL_HSS0_DTR_N, 1);
 output_control();
 gpio_line_set(port ? GPIO_HSS1_RTS_N : GPIO_HSS0_RTS_N, 1);
}
