
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int unit_mask; int exl; int user; int kernel; int count; int event; int enabled; } ;
struct TYPE_3__ {int num_counters; } ;


 TYPE_2__* ctr ;
 TYPE_1__* model ;
 int oprofilefs_create_ulong (struct super_block*,struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct super_block*,struct dentry*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int op_mips_create_files(struct super_block *sb, struct dentry *root)
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
  oprofilefs_create_ulong(sb, dir, "exl", &ctr[i].exl);

  oprofilefs_create_ulong(sb, dir, "unit_mask", &ctr[i].unit_mask);
 }

 return 0;
}
