
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vio_device_id {char* type; int compat; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct vio_dev {TYPE_2__ dev; int type; } ;


 scalar_t__ of_device_is_compatible (int ,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static const struct vio_device_id *vio_match_device(
  const struct vio_device_id *ids, const struct vio_dev *dev)
{
 while (ids->type[0] != '\0') {
  if ((strncmp(dev->type, ids->type, strlen(ids->type)) == 0) &&
      of_device_is_compatible(dev->dev.archdata.of_node,
      ids->compat))
   return ids;
  ids++;
 }
 return ((void*)0);
}
