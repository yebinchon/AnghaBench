
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yenta_socket {TYPE_1__* dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; scalar_t__ flags; } ;
struct TYPE_2__ {struct resource* resource; } ;


 int PCI_BRIDGE_RESOURCES ;
 int release_resource (struct resource*) ;

__attribute__((used)) static void yenta_free_resources(struct yenta_socket *socket)
{
 int i;
 for (i=0;i<4;i++) {
  struct resource *res;
  res = socket->dev->resource + PCI_BRIDGE_RESOURCES + i;
  if (res->start != 0 && res->end != 0)
   release_resource(res);
  res->start = res->end = res->flags = 0;
 }
}
