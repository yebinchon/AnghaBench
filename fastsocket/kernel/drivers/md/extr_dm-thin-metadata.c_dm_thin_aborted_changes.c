
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_thin_device {int aborted_with_changes; TYPE_1__* pmd; } ;
struct TYPE_2__ {int root_lock; } ;


 int down_read (int *) ;
 int up_read (int *) ;

bool dm_thin_aborted_changes(struct dm_thin_device *td)
{
 bool r;

 down_read(&td->pmd->root_lock);
 r = td->aborted_with_changes;
 up_read(&td->pmd->root_lock);

 return r;
}
