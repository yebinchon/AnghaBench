
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ name; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (scalar_t__,int,int ,int ,int *) ;
 int debugfs_parent ;
 int fops_pid_param ;
 TYPE_1__* pid_files ;

__attribute__((used)) static void intel_pstate_debug_expose_params(void)
{
 int i = 0;

 debugfs_parent = debugfs_create_dir("pstate_snb", ((void*)0));
 if (IS_ERR_OR_NULL(debugfs_parent))
  return;
 while (pid_files[i].name) {
  debugfs_create_file(pid_files[i].name, 0660,
    debugfs_parent, pid_files[i].value,
    &fops_pid_param);
  i++;
 }
}
