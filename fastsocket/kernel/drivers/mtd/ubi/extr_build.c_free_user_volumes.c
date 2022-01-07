
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device {int vtbl_slots; TYPE_1__** volumes; } ;
struct TYPE_2__ {struct TYPE_2__* eba_tbl; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void free_user_volumes(struct ubi_device *ubi)
{
 int i;

 for (i = 0; i < ubi->vtbl_slots; i++)
  if (ubi->volumes[i]) {
   kfree(ubi->volumes[i]->eba_tbl);
   kfree(ubi->volumes[i]);
  }
}
