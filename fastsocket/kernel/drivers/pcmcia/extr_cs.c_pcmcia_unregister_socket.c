
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int socket_released; int socket_list; scalar_t__ thread; int ops; } ;


 int cs_dbg (struct pcmcia_socket*,int ,char*,int ) ;
 int down_write (int *) ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 int pcmcia_socket_list_rwsem ;
 int release_cis_mem (struct pcmcia_socket*) ;
 int release_resource_db (struct pcmcia_socket*) ;
 int up_write (int *) ;
 int wait_for_completion (int *) ;

void pcmcia_unregister_socket(struct pcmcia_socket *socket)
{
 if (!socket)
  return;

 cs_dbg(socket, 0, "pcmcia_unregister_socket(0x%p)\n", socket->ops);

 if (socket->thread)
  kthread_stop(socket->thread);

 release_cis_mem(socket);


 down_write(&pcmcia_socket_list_rwsem);
 list_del(&socket->socket_list);
 up_write(&pcmcia_socket_list_rwsem);


 release_resource_db(socket);
 wait_for_completion(&socket->socket_released);
}
