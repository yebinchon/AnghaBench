
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int ref_count; } ;


 int atomic_inc (int *) ;

struct parport *parport_get_port (struct parport *port)
{
 atomic_inc (&port->ref_count);
 return port;
}
