
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t node; TYPE_2__* card; } ;
typedef TYPE_3__ port_t ;
typedef int port_status_t ;
struct TYPE_6__ {TYPE_1__* status; } ;
struct TYPE_5__ {int * port_status; } ;



__attribute__((used)) static inline port_status_t* get_status(port_t *port)
{
 return &port->card->status->port_status[port->node];
}
