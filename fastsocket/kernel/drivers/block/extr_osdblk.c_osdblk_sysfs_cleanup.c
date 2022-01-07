
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int *) ;
 int * class_osdblk ;

__attribute__((used)) static void osdblk_sysfs_cleanup(void)
{
 if (class_osdblk)
  class_destroy(class_osdblk);
 class_osdblk = ((void*)0);
}
