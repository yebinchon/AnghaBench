
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int hid_debug_root ;

void hid_debug_init(void)
{
 hid_debug_root = debugfs_create_dir("hid", ((void*)0));
}
