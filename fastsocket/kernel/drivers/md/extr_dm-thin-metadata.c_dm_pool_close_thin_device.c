
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_thin_device {TYPE_1__* pmd; } ;
struct TYPE_2__ {int root_lock; } ;


 int __close_device (struct dm_thin_device*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_close_thin_device(struct dm_thin_device *td)
{
 down_write(&td->pmd->root_lock);
 __close_device(td);
 up_write(&td->pmd->root_lock);

 return 0;
}
