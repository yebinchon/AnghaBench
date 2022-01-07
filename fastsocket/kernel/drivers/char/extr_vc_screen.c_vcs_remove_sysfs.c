
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int) ;
 int VCS_MAJOR ;
 int device_destroy (int ,int ) ;
 int vc_class ;

void vcs_remove_sysfs(int index)
{
 device_destroy(vc_class, MKDEV(VCS_MAJOR, index + 1));
 device_destroy(vc_class, MKDEV(VCS_MAJOR, index + 129));
}
