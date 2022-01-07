
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* create_files ) (struct super_block*,struct dentry*) ;} ;


 int BUFFER_SIZE_DEFAULT ;
 int BUFFER_WATERSHED_DEFAULT ;
 int CPU_BUFFER_SIZE_DEFAULT ;
 int TIME_SLICE_DEFAULT ;
 int cpu_type_fops ;
 int depth_fops ;
 int dump_fops ;
 int enable_fops ;
 int event_buffer_fops ;
 int msecs_to_jiffies (int ) ;
 int oprofile_buffer_size ;
 int oprofile_buffer_watershed ;
 int oprofile_cpu_buffer_size ;
 int oprofile_create_stats_files (struct super_block*,struct dentry*) ;
 TYPE_1__ oprofile_ops ;
 int oprofile_time_slice ;
 int oprofilefs_create_file (struct super_block*,struct dentry*,char*,int *) ;
 int oprofilefs_create_file_perm (struct super_block*,struct dentry*,char*,int *,int) ;
 int oprofilefs_create_ulong (struct super_block*,struct dentry*,char*,int *) ;
 int pointer_size_fops ;
 int stub1 (struct super_block*,struct dentry*) ;
 int timeout_fops ;

void oprofile_create_files(struct super_block *sb, struct dentry *root)
{

 oprofile_buffer_size = BUFFER_SIZE_DEFAULT;
 oprofile_cpu_buffer_size = CPU_BUFFER_SIZE_DEFAULT;
 oprofile_buffer_watershed = BUFFER_WATERSHED_DEFAULT;
 oprofile_time_slice = msecs_to_jiffies(TIME_SLICE_DEFAULT);

 oprofilefs_create_file(sb, root, "enable", &enable_fops);
 oprofilefs_create_file_perm(sb, root, "dump", &dump_fops, 0666);
 oprofilefs_create_file(sb, root, "buffer", &event_buffer_fops);
 oprofilefs_create_ulong(sb, root, "buffer_size", &oprofile_buffer_size);
 oprofilefs_create_ulong(sb, root, "buffer_watershed", &oprofile_buffer_watershed);
 oprofilefs_create_ulong(sb, root, "cpu_buffer_size", &oprofile_cpu_buffer_size);
 oprofilefs_create_file(sb, root, "cpu_type", &cpu_type_fops);
 oprofilefs_create_file(sb, root, "backtrace_depth", &depth_fops);
 oprofilefs_create_file(sb, root, "pointer_size", &pointer_size_fops);



 oprofile_create_stats_files(sb, root);
 if (oprofile_ops.create_files)
  oprofile_ops.create_files(sb, root);
}
