
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {struct parport** slaves; int list; int * ops; } ;


 int dead_ops ;
 int detach_driver_chain (struct parport*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parport_daisy_fini (struct parport*) ;
 int parport_proc_unregister (struct parport*) ;
 int parport_put_port (struct parport*) ;
 int parportlist_lock ;
 int registration_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void parport_remove_port(struct parport *port)
{
 int i;

 mutex_lock(&registration_lock);


 detach_driver_chain (port);
 port->ops = &dead_ops;
 spin_lock(&parportlist_lock);
 list_del_init(&port->list);
 for (i = 1; i < 3; i++) {
  struct parport *slave = port->slaves[i-1];
  if (slave)
   list_del_init(&slave->list);
 }
 spin_unlock(&parportlist_lock);

 mutex_unlock(&registration_lock);

 parport_proc_unregister(port);

 for (i = 1; i < 3; i++) {
  struct parport *slave = port->slaves[i-1];
  if (slave)
   parport_put_port(slave);
 }
}
