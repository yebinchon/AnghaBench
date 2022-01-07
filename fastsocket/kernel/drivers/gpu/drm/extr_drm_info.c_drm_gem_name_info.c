
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int object_name_idr; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int drm_gem_one_name_info ;
 int idr_for_each (int *,int ,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*) ;

int drm_gem_name_info(struct seq_file *m, void *data)
{
 struct drm_info_node *node = (struct drm_info_node *) m->private;
 struct drm_device *dev = node->minor->dev;

 seq_printf(m, "  name     size handles refcount\n");
 idr_for_each(&dev->object_name_idr, drm_gem_one_name_info, m);
 return 0;
}
