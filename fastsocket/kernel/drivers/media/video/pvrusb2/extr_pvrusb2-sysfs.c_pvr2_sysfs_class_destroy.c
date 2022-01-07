
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_sysfs_class {int class; } ;


 int class_unregister (int *) ;
 int pvr2_sysfs_trace (char*,struct pvr2_sysfs_class*) ;

void pvr2_sysfs_class_destroy(struct pvr2_sysfs_class *clp)
{
 pvr2_sysfs_trace("Unregistering pvr2_sysfs_class id=%p", clp);
 class_unregister(&clp->class);
}
