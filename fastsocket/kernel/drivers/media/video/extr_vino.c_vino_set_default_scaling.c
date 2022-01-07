
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct vino_channel_settings {TYPE_1__ clipping; } ;


 int vino_set_scaling (struct vino_channel_settings*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vino_set_default_scaling(struct vino_channel_settings *vcs)
{
 vino_set_scaling(vcs, vcs->clipping.right - vcs->clipping.left,
    vcs->clipping.bottom - vcs->clipping.top);
}
