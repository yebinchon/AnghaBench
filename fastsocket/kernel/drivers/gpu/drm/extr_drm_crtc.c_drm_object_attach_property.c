
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int id; } ;
struct drm_property {TYPE_2__ base; } ;
struct drm_mode_object {TYPE_1__* properties; int type; } ;
struct TYPE_3__ {int count; int * values; int * ids; } ;


 int DRM_OBJECT_MAX_PROPERTY ;
 int WARN (int,char*,int ) ;

void drm_object_attach_property(struct drm_mode_object *obj,
    struct drm_property *property,
    uint64_t init_val)
{
 int count = obj->properties->count;

 if (count == DRM_OBJECT_MAX_PROPERTY) {
  WARN(1, "Failed to attach object property (type: 0x%x). Please "
   "increase DRM_OBJECT_MAX_PROPERTY by 1 for each time "
   "you see this message on the same object type.\n",
   obj->type);
  return;
 }

 obj->properties->ids[count] = property->base.id;
 obj->properties->values[count] = init_val;
 obj->properties->count++;
}
