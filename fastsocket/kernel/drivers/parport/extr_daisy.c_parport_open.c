
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int daisy; } ;
struct pardevice {int daisy; } ;
struct daisydev {int devnum; int daisy; int port; struct daisydev* next; } ;


 int parport_claim_or_block (struct pardevice*) ;
 struct parport* parport_get_port (int ) ;
 int parport_put_port (struct parport*) ;
 struct pardevice* parport_register_device (struct parport*,char const*,int *,int *,int *,int ,int *) ;
 int parport_release (struct pardevice*) ;
 int parport_unregister_device (struct pardevice*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct daisydev* topology ;
 int topology_lock ;

struct pardevice *parport_open(int devnum, const char *name)
{
 struct daisydev *p = topology;
 struct parport *port;
 struct pardevice *dev;
 int daisy;

 spin_lock(&topology_lock);
 while (p && p->devnum != devnum)
  p = p->next;

 if (!p) {
  spin_unlock(&topology_lock);
  return ((void*)0);
 }

 daisy = p->daisy;
 port = parport_get_port(p->port);
 spin_unlock(&topology_lock);

 dev = parport_register_device(port, name, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
 parport_put_port(port);
 if (!dev)
  return ((void*)0);

 dev->daisy = daisy;


 if (daisy >= 0) {
  int selected;
  parport_claim_or_block(dev);
  selected = port->daisy;
  parport_release(dev);

  if (selected != daisy) {

   parport_unregister_device(dev);
   return ((void*)0);
  }
 }

 return dev;
}
