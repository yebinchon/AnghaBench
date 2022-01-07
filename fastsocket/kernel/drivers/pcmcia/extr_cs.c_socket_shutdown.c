
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Config; scalar_t__ AssignedIRQ; } ;
struct pcmcia_socket {int state; int dev; TYPE_2__* ops; scalar_t__ functions; scalar_t__ lock_count; TYPE_1__ irq; int socket; } ;
struct TYPE_4__ {int (* get_status ) (struct pcmcia_socket*,int*) ;int (* set_socket ) (struct pcmcia_socket*,int *) ;int (* init ) (struct pcmcia_socket*) ;} ;


 int KERN_ERR ;
 int SOCKET_INUSE ;
 int SOCKET_PRESENT ;
 int SS_POWERON ;
 int cb_free (struct pcmcia_socket*) ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int cs_socket_put (struct pcmcia_socket*) ;
 int dead_socket ;
 int destroy_cis_cache (struct pcmcia_socket*) ;
 int dev_printk (int ,int *,char*) ;
 int msleep (int) ;
 int shutdown_delay ;
 int socket_remove_drivers (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*,int *) ;
 int stub3 (struct pcmcia_socket*,int*) ;

__attribute__((used)) static void socket_shutdown(struct pcmcia_socket *s)
{
 int status;

 cs_dbg(s, 4, "shutdown\n");

 socket_remove_drivers(s);
 s->state &= SOCKET_INUSE | SOCKET_PRESENT;
 msleep(shutdown_delay * 10);
 s->state &= SOCKET_INUSE;


 s->socket = dead_socket;
 s->ops->init(s);
 s->ops->set_socket(s, &s->socket);
 s->irq.AssignedIRQ = s->irq.Config = 0;
 s->lock_count = 0;
 destroy_cis_cache(s);



 s->functions = 0;


 msleep(100);

 s->ops->get_status(s, &status);
 if (status & SS_POWERON) {
  dev_printk(KERN_ERR, &s->dev,
      "*** DANGER *** unable to remove socket power\n");
 }

 cs_socket_put(s);
}
