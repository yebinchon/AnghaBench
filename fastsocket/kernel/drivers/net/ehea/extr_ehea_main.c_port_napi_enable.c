
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehea_port {int num_def_qps; TYPE_1__* port_res; } ;
struct TYPE_2__ {int napi; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void port_napi_enable(struct ehea_port *port)
{
 int i;

 for (i = 0; i < port->num_def_qps; i++)
  napi_enable(&port->port_res[i].napi);
}
