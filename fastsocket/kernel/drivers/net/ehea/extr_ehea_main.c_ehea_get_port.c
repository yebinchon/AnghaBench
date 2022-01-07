
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port {int logical_port_id; } ;
struct ehea_adapter {struct ehea_port** port; } ;


 int EHEA_MAX_PORTS ;

__attribute__((used)) static struct ehea_port *ehea_get_port(struct ehea_adapter *adapter,
           int logical_port)
{
 int i;

 for (i = 0; i < EHEA_MAX_PORTS; i++)
  if (adapter->port[i])
   if (adapter->port[i]->logical_port_id == logical_port)
    return adapter->port[i];
 return ((void*)0);
}
