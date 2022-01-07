
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int recovery; TYPE_1__* pers; int * to_remove; scalar_t__ ready; } ;
struct TYPE_2__ {int owner; scalar_t__ sync_request; int (* stop ) (struct mddev*) ;} ;


 int MD_RECOVERY_FROZEN ;
 int clear_bit (int ,int *) ;
 int md_redundancy_group ;
 int module_put (int ) ;
 int stub1 (struct mddev*) ;

__attribute__((used)) static void __md_stop(struct mddev *mddev)
{
 mddev->ready = 0;
 mddev->pers->stop(mddev);
 if (mddev->pers->sync_request && mddev->to_remove == ((void*)0))
  mddev->to_remove = &md_redundancy_group;
 module_put(mddev->pers->owner);
 mddev->pers = ((void*)0);
 clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
}
