
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int irq; } ;


 int GPIO_NR_PALMTC_PCMCIA_POWER1 ;
 int GPIO_NR_PALMTC_PCMCIA_POWER2 ;
 int GPIO_NR_PALMTC_PCMCIA_POWER3 ;
 int GPIO_NR_PALMTC_PCMCIA_PWRREADY ;
 int GPIO_NR_PALMTC_PCMCIA_READY ;
 int GPIO_NR_PALMTC_PCMCIA_RESET ;
 int IRQ_GPIO (int ) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int palmtc_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int ret;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_POWER1, "PCMCIA PWR1");
 if (ret)
  goto err1;
 ret = gpio_direction_output(GPIO_NR_PALMTC_PCMCIA_POWER1, 0);
 if (ret)
  goto err2;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_POWER2, "PCMCIA PWR2");
 if (ret)
  goto err2;
 ret = gpio_direction_output(GPIO_NR_PALMTC_PCMCIA_POWER2, 0);
 if (ret)
  goto err3;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_POWER3, "PCMCIA PWR3");
 if (ret)
  goto err3;
 ret = gpio_direction_output(GPIO_NR_PALMTC_PCMCIA_POWER3, 0);
 if (ret)
  goto err4;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_RESET, "PCMCIA RST");
 if (ret)
  goto err4;
 ret = gpio_direction_output(GPIO_NR_PALMTC_PCMCIA_RESET, 1);
 if (ret)
  goto err5;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_READY, "PCMCIA RDY");
 if (ret)
  goto err5;
 ret = gpio_direction_input(GPIO_NR_PALMTC_PCMCIA_READY);
 if (ret)
  goto err6;

 ret = gpio_request(GPIO_NR_PALMTC_PCMCIA_PWRREADY, "PCMCIA PWRRDY");
 if (ret)
  goto err6;
 ret = gpio_direction_input(GPIO_NR_PALMTC_PCMCIA_PWRREADY);
 if (ret)
  goto err7;

 skt->irq = IRQ_GPIO(GPIO_NR_PALMTC_PCMCIA_READY);
 return 0;

err7:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_PWRREADY);
err6:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_READY);
err5:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_RESET);
err4:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_POWER3);
err3:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_POWER2);
err2:
 gpio_free(GPIO_NR_PALMTC_PCMCIA_POWER1);
err1:
 return ret;
}
