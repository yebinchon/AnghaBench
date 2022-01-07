
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recovery; int flags; } ;
struct raid_set {int bitmap_loaded; TYPE_1__ md; } ;
struct dm_target {struct raid_set* private; } ;


 int MD_CHANGE_DEVS ;
 int MD_RECOVERY_FROZEN ;
 int attempt_restore_of_faulty_devices (struct raid_set*) ;
 int bitmap_load (TYPE_1__*) ;
 int clear_bit (int ,int *) ;
 int mddev_resume (TYPE_1__*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void raid_resume(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 set_bit(MD_CHANGE_DEVS, &rs->md.flags);
 if (!rs->bitmap_loaded) {
  bitmap_load(&rs->md);
  rs->bitmap_loaded = 1;
 } else {





  attempt_restore_of_faulty_devices(rs);
 }

 clear_bit(MD_RECOVERY_FROZEN, &rs->md.recovery);
 mddev_resume(&rs->md);
}
