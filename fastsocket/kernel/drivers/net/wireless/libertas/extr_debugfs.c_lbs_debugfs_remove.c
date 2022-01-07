
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (scalar_t__) ;
 scalar_t__ lbs_dir ;

void lbs_debugfs_remove(void)
{
 if (lbs_dir)
   debugfs_remove(lbs_dir);
 return;
}
