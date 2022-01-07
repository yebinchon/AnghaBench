
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;


 int dead_socket ;
 int m8xx_set_socket (struct pcmcia_socket*,int *) ;

__attribute__((used)) static int m8xx_sock_suspend(struct pcmcia_socket *sock)
{
 return m8xx_set_socket(sock, &dead_socket);
}
