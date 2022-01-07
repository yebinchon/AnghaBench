
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int refcount; } ;
struct drm_gem_object {TYPE_1__ refcount; int handle_count; int size; int name; } ;


 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int drm_gem_one_name_info(int id, void *ptr, void *data)
{
 struct drm_gem_object *obj = ptr;
 struct seq_file *m = data;

 seq_printf(m, "%6d %8zd %7d %8d\n",
     obj->name, obj->size,
     atomic_read(&obj->handle_count),
     atomic_read(&obj->refcount.refcount));
 return 0;
}
