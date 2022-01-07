
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
typedef int filename ;
struct TYPE_2__ {int unit_mask; int user; int kernel; int count; int event; int enabled; } ;


 unsigned int NR_counter ;
 TYPE_1__* counter ;
 int oprofilefs_create_ulong (struct super_block*,struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct super_block*,struct dentry*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int avr32_perf_counter_create_files(struct super_block *sb,
  struct dentry *root)
{
 struct dentry *dir;
 unsigned int i;
 char filename[4];

 for (i = 0; i < NR_counter; i++) {
  snprintf(filename, sizeof(filename), "%u", i);
  dir = oprofilefs_mkdir(sb, root, filename);

  oprofilefs_create_ulong(sb, dir, "enabled",
    &counter[i].enabled);
  oprofilefs_create_ulong(sb, dir, "event",
    &counter[i].event);
  oprofilefs_create_ulong(sb, dir, "count",
    &counter[i].count);


  oprofilefs_create_ulong(sb, dir, "kernel",
    &counter[i].kernel);
  oprofilefs_create_ulong(sb, dir, "user",
    &counter[i].user);
  oprofilefs_create_ulong(sb, dir, "unit_mask",
    &counter[i].unit_mask);
 }

 return 0;
}
