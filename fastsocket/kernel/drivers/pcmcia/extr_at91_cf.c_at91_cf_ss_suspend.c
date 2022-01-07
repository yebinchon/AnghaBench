
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;


 int at91_cf_set_socket (struct pcmcia_socket*,int *) ;
 int dead_socket ;

__attribute__((used)) static int at91_cf_ss_suspend(struct pcmcia_socket *s)
{
 return at91_cf_set_socket(s, &dead_socket);
}
