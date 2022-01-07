
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int sharpsl_pcmcia_init_reset (struct soc_pcmcia_socket*) ;

__attribute__((used)) static void sharpsl_pcmcia_socket_suspend(struct soc_pcmcia_socket *skt)
{
 sharpsl_pcmcia_init_reset(skt);
}
