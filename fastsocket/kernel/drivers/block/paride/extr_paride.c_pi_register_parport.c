
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parport {scalar_t__ name; } ;
struct TYPE_3__ {char* parname; int port; int device; int parq; int pardev; } ;
typedef TYPE_1__ PIA ;


 int init_waitqueue_head (int *) ;
 struct parport* parport_find_base (int ) ;
 int parport_put_port (struct parport*) ;
 int parport_register_device (struct parport*,int ,int *,int ,int *,int ,void*) ;
 int pi_wake_up ;
 int printk (char*,int ,int ,scalar_t__) ;

__attribute__((used)) static int pi_register_parport(PIA * pi, int verbose)
{
 struct parport *port;

 port = parport_find_base(pi->port);
 if (!port)
  return 0;

 pi->pardev = parport_register_device(port,
          pi->device, ((void*)0),
          pi_wake_up, ((void*)0), 0, (void *) pi);
 parport_put_port(port);
 if (!pi->pardev)
  return 0;

 init_waitqueue_head(&pi->parq);

 if (verbose)
  printk("%s: 0x%x is %s\n", pi->device, pi->port, port->name);

 pi->parname = (char *) port->name;

 return 1;
}
