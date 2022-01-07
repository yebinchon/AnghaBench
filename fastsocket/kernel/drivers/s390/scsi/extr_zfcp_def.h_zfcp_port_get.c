
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
zfcp_port_get(struct zfcp_port *port)
{
 atomic_inc(&port->refcount);
}
