
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {size_t data_norm; } ;
struct TYPE_2__ {int fps_max; } ;


 TYPE_1__* vino_data_norms ;
 int vino_set_framerate (struct vino_channel_settings*,int ) ;

__attribute__((used)) static inline void vino_set_default_framerate(struct
           vino_channel_settings *vcs)
{
 vino_set_framerate(vcs, vino_data_norms[vcs->data_norm].fps_max);
}
