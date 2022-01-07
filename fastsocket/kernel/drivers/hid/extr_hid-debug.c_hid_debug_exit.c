
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int hid_debug_root ;

void hid_debug_exit(void)
{
 debugfs_remove_recursive(hid_debug_root);
}
