
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int ndevices; TYPE_1__** dev; } ;
struct TYPE_2__ {int bus; int target; } ;


 int DECLARE_BITMAP (int ,int) ;
 int HPSA_MAX_DEVICES ;
 int __set_bit (int,int ) ;
 int bitmap_zero (int ,int) ;
 int find_first_zero_bit (int ,int) ;
 int lun_taken ;

__attribute__((used)) static int hpsa_find_target_lun(struct ctlr_info *h,
 unsigned char scsi3addr[], int bus, int *target, int *lun)
{



 int i, found = 0;
 DECLARE_BITMAP(lun_taken, HPSA_MAX_DEVICES);

 bitmap_zero(lun_taken, HPSA_MAX_DEVICES);

 for (i = 0; i < h->ndevices; i++) {
  if (h->dev[i]->bus == bus && h->dev[i]->target != -1)
   __set_bit(h->dev[i]->target, lun_taken);
 }

 i = find_first_zero_bit(lun_taken, HPSA_MAX_DEVICES);
 if (i < HPSA_MAX_DEVICES) {

  *target = i;
  *lun = 0;
  found = 1;
 }
 return !found;
}
