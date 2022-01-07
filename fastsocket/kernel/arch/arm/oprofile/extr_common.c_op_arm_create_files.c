
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int user; int kernel; int unit_mask; int count; int event; int enabled; } ;
struct TYPE_3__ {unsigned int num_counters; } ;


 TYPE_2__* counter_config ;
 TYPE_1__* op_arm_model ;
 int oprofilefs_create_ulong (struct super_block*,struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct super_block*,struct dentry*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int op_arm_create_files(struct super_block *sb, struct dentry *root)
{
 unsigned int i;

 for (i = 0; i < op_arm_model->num_counters; i++) {
  struct dentry *dir;
  char buf[4];

  snprintf(buf, sizeof buf, "%d", i);
  dir = oprofilefs_mkdir(sb, root, buf);
  oprofilefs_create_ulong(sb, dir, "enabled", &counter_config[i].enabled);
  oprofilefs_create_ulong(sb, dir, "event", &counter_config[i].event);
  oprofilefs_create_ulong(sb, dir, "count", &counter_config[i].count);
  oprofilefs_create_ulong(sb, dir, "unit_mask", &counter_config[i].unit_mask);
  oprofilefs_create_ulong(sb, dir, "kernel", &counter_config[i].kernel);
  oprofilefs_create_ulong(sb, dir, "user", &counter_config[i].user);
 }

 return 0;
}
