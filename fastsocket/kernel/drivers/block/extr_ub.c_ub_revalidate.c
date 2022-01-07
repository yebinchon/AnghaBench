
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bsize; scalar_t__ bshift; scalar_t__ nsec; } ;
struct ub_lun {TYPE_1__ capacity; scalar_t__ changed; scalar_t__ readonly; } ;
struct ub_dev {int dummy; } ;


 scalar_t__ ub_sync_read_cap (struct ub_dev*,struct ub_lun*,TYPE_1__*) ;
 scalar_t__ ub_sync_tur (struct ub_dev*,struct ub_lun*) ;

__attribute__((used)) static void ub_revalidate(struct ub_dev *sc, struct ub_lun *lun)
{

 lun->readonly = 0;

 lun->capacity.nsec = 0;
 lun->capacity.bsize = 512;
 lun->capacity.bshift = 0;

 if (ub_sync_tur(sc, lun) != 0)
  return;
 lun->changed = 0;

 if (ub_sync_read_cap(sc, lun, &lun->capacity) != 0) {





  if (ub_sync_read_cap(sc, lun, &lun->capacity) != 0) {
   lun->capacity.nsec = 0;
   lun->capacity.bsize = 512;
   lun->capacity.bshift = 0;
  }
 }
}
