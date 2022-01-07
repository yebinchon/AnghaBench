
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_display_mode {int head; TYPE_1__ base; } ;


 int INIT_LIST_HEAD (int *) ;

void drm_mode_copy(struct drm_display_mode *dst, const struct drm_display_mode *src)
{
 int id = dst->base.id;

 *dst = *src;
 dst->base.id = id;
 INIT_LIST_HEAD(&dst->head);
}
