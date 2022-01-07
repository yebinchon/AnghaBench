
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int) ;
 int VCS_MAJOR ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int vc_class ;

void vcs_make_sysfs(int index)
{
 device_create(vc_class, ((void*)0), MKDEV(VCS_MAJOR, index + 1), ((void*)0),
        "vcs%u", index + 1);
 device_create(vc_class, ((void*)0), MKDEV(VCS_MAJOR, index + 129), ((void*)0),
        "vcsa%u", index + 1);
}
