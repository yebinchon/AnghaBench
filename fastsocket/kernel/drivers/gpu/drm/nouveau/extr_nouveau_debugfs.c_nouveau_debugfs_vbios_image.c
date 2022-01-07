
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_4__ {int length; int * data; } ;
struct nouveau_drm {TYPE_2__ vbios; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct TYPE_3__ {int dev; } ;


 struct nouveau_drm* nouveau_drm (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int
nouveau_debugfs_vbios_image(struct seq_file *m, void *data)
{
 struct drm_info_node *node = (struct drm_info_node *) m->private;
 struct nouveau_drm *drm = nouveau_drm(node->minor->dev);
 int i;

 for (i = 0; i < drm->vbios.length; i++)
  seq_printf(m, "%c", drm->vbios.data[i]);
 return 0;
}
