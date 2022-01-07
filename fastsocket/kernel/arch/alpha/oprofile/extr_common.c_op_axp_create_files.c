
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int unit_mask; int user; int kernel; int count; int event; int enabled; } ;
struct TYPE_5__ {int num_counters; scalar_t__ can_set_proc_mode; } ;
struct TYPE_4__ {int enable_user; int enable_kernel; int enable_pal; } ;


 TYPE_3__* ctr ;
 TYPE_2__* model ;
 int oprofilefs_create_ulong (struct super_block*,struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct super_block*,struct dentry*,char*) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_1__ sys ;

__attribute__((used)) static int
op_axp_create_files(struct super_block *sb, struct dentry *root)
{
 int i;

 for (i = 0; i < model->num_counters; ++i) {
  struct dentry *dir;
  char buf[4];

  snprintf(buf, sizeof buf, "%d", i);
  dir = oprofilefs_mkdir(sb, root, buf);

  oprofilefs_create_ulong(sb, dir, "enabled", &ctr[i].enabled);
                oprofilefs_create_ulong(sb, dir, "event", &ctr[i].event);
  oprofilefs_create_ulong(sb, dir, "count", &ctr[i].count);

  oprofilefs_create_ulong(sb, dir, "kernel", &ctr[i].kernel);
  oprofilefs_create_ulong(sb, dir, "user", &ctr[i].user);
  oprofilefs_create_ulong(sb, dir, "unit_mask", &ctr[i].unit_mask);
 }

 if (model->can_set_proc_mode) {
  oprofilefs_create_ulong(sb, root, "enable_pal",
     &sys.enable_pal);
  oprofilefs_create_ulong(sb, root, "enable_kernel",
     &sys.enable_kernel);
  oprofilefs_create_ulong(sb, root, "enable_user",
     &sys.enable_user);
 }

 return 0;
}
