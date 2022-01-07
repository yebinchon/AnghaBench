
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_port {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void deref_port(struct mcast_port *port)
{
 if (atomic_dec_and_test(&port->refcount))
  complete(&port->comp);
}
