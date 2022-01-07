
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_driver {struct pnp_device_id* id_table; } ;
struct pnp_device_id {scalar_t__* id; } ;
struct pnp_dev {int id; } ;


 scalar_t__ compare_pnp_id (int ,scalar_t__*) ;

__attribute__((used)) static const struct pnp_device_id *match_device(struct pnp_driver *drv,
      struct pnp_dev *dev)
{
 const struct pnp_device_id *drv_id = drv->id_table;

 if (!drv_id)
  return ((void*)0);

 while (*drv_id->id) {
  if (compare_pnp_id(dev->id, drv_id->id))
   return drv_id;
  drv_id++;
 }
 return ((void*)0);
}
