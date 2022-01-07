
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct stripe_c {unsigned int stripes; int kstriped_ws; TYPE_3__* stripe; } ;
struct dm_target {struct stripe_c* private; } ;
struct bio {TYPE_1__* bi_bdev; } ;
typedef int major_minor ;
struct TYPE_6__ {int error_count; TYPE_2__* dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int bd_disk; } ;


 int BIO_RW_AHEAD ;
 scalar_t__ DM_IO_ERROR_THRESHOLD ;
 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;
 int disk_devt (int ) ;
 int kstriped ;
 int memset (char*,int ,int) ;
 int queue_work (int ,int *) ;
 int sprintf (char*,char*,int,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int stripe_end_io(struct dm_target *ti, struct bio *bio,
    int error, union map_info *map_context)
{
 unsigned i;
 char major_minor[16];
 struct stripe_c *sc = ti->private;

 if (!error)
  return 0;

 if ((error == -EWOULDBLOCK) && bio_rw_flagged(bio, BIO_RW_AHEAD))
  return error;

 if (error == -EOPNOTSUPP)
  return error;

 memset(major_minor, 0, sizeof(major_minor));
 sprintf(major_minor, "%d:%d",
  MAJOR(disk_devt(bio->bi_bdev->bd_disk)),
  MINOR(disk_devt(bio->bi_bdev->bd_disk)));







 for (i = 0; i < sc->stripes; i++)
  if (!strcmp(sc->stripe[i].dev->name, major_minor)) {
   atomic_inc(&(sc->stripe[i].error_count));
   if (atomic_read(&(sc->stripe[i].error_count)) <
       DM_IO_ERROR_THRESHOLD)
    queue_work(kstriped, &sc->kstriped_ws);
  }

 return error;
}
