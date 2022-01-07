
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ibmasmfs_type ;
 int unregister_filesystem (int *) ;

void ibmasmfs_unregister(void)
{
 unregister_filesystem(&ibmasmfs_type);
}
