
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ id; } ;
struct drm_property {TYPE_1__ base; } ;
struct drm_mode_object {TYPE_2__* properties; } ;
struct TYPE_4__ {int count; scalar_t__* ids; int * values; } ;


 int EINVAL ;

int drm_object_property_set_value(struct drm_mode_object *obj,
      struct drm_property *property, uint64_t val)
{
 int i;

 for (i = 0; i < obj->properties->count; i++) {
  if (obj->properties->ids[i] == property->base.id) {
   obj->properties->values[i] = val;
   return 0;
  }
 }

 return -EINVAL;
}
