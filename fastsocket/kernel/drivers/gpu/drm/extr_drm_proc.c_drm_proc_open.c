
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_4__ {struct drm_info_node* data; } ;
struct TYPE_3__ {int show; } ;


 TYPE_2__* PDE (struct inode*) ;
 int single_open (struct file*,int ,struct drm_info_node*) ;

__attribute__((used)) static int drm_proc_open(struct inode *inode, struct file *file)
{
 struct drm_info_node* node = PDE(inode)->data;

 return single_open(file, node->info_ent->show, node);
}
