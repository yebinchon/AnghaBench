
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raid_level; } ;
typedef TYPE_1__ drive_info_struct ;
struct TYPE_6__ {int highest_lun; TYPE_1__** drv; } ;
typedef TYPE_2__ ctlr_info_t ;


 int CISS_MAX_LUN ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static int cciss_alloc_drive_info(ctlr_info_t *h, int controller_node)
{
 int i;
 drive_info_struct *drv;


 for (i = 0; i < CISS_MAX_LUN; i++) {


  if (h->drv[i] && i != 0)
   continue;




  if (i == 0 && h->drv[i] && h->drv[i]->raid_level != -1)
   continue;





  if (i > h->highest_lun && !controller_node)
   h->highest_lun = i;


  if (i == 0 && h->drv[i] != ((void*)0))
   return i;





  drv = kzalloc(sizeof(*drv), GFP_KERNEL);
  if (!drv)
   return -1;
  drv->raid_level = -1;
  h->drv[i] = drv;
  return i;
 }
 return -1;
}
