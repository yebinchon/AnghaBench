
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1000_pcmcia_socket {scalar_t__ nr; void* irq; } ;


 void* AU1000_GPIO_2 ;
 void* AU1000_GPIO_3 ;
 void* AU1000_GPIO_5 ;
 void* BOARD_PC0_INT ;
 void* BOARD_PC1_INT ;

__attribute__((used)) static int db1x00_pcmcia_hw_init(struct au1000_pcmcia_socket *skt)
{





 skt->irq = skt->nr ? AU1000_GPIO_5 : AU1000_GPIO_2;

 return 0;
}
