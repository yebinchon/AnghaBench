
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dev; } ;


 unsigned int GPIO_A0 ;
 unsigned int GPIO_A1 ;
 unsigned int GPIO_A2 ;
 unsigned int GPIO_A3 ;
 int GRER ;
 int SA1111_DEV (int ) ;
 int sa1111_pcmcia_hw_init (struct soc_pcmcia_socket*) ;
 int sa1111_set_io (int ,unsigned int,int ) ;
 int sa1111_set_io_dir (int ,unsigned int,int ,int ) ;
 int sa1111_set_sleep_io (int ,unsigned int,int ) ;

__attribute__((used)) static int jornada720_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 unsigned int pin = GPIO_A0 | GPIO_A1 | GPIO_A2 | GPIO_A3;




 GRER |= 0x00000002;

 sa1111_set_io_dir(SA1111_DEV(skt->dev), pin, 0, 0);
 sa1111_set_io(SA1111_DEV(skt->dev), pin, 0);
 sa1111_set_sleep_io(SA1111_DEV(skt->dev), pin, 0);

 return sa1111_pcmcia_hw_init(skt);
}
