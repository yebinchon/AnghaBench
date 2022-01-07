
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int board_pcmcia_power (int) ;

__attribute__((used)) static void trizeps_pcmcia_socket_suspend(struct soc_pcmcia_socket *skt)
{
 board_pcmcia_power(0x0);
}
