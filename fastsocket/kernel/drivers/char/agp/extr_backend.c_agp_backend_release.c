
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int agp_in_use; } ;


 int atomic_dec (int *) ;

void agp_backend_release(struct agp_bridge_data *bridge)
{

 if (bridge)
  atomic_dec(&bridge->agp_in_use);
}
