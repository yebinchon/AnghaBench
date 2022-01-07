
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int ref_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int free_port (struct parport*) ;

void parport_put_port (struct parport *port)
{
 if (atomic_dec_and_test (&port->ref_count))

  free_port (port);

 return;
}
