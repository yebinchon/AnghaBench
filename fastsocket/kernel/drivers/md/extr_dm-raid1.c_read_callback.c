
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror {TYPE_1__* dev; int ms; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int DMERR_LIMIT (char*,int ) ;
 int DMWARN_LIMIT (char*,int ) ;
 int DM_RAID1_READ_ERROR ;
 int EIO ;
 int bio_endio (struct bio*,int ) ;
 struct mirror* bio_get_m (struct bio*) ;
 int bio_rw (struct bio*) ;
 int bio_set_m (struct bio*,int *) ;
 int default_ok (struct mirror*) ;
 int fail_mirror (struct mirror*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ mirror_available (int ,struct bio*) ;
 int queue_bio (int ,struct bio*,int ) ;

__attribute__((used)) static void read_callback(unsigned long error, void *context)
{
 struct bio *bio = context;
 struct mirror *m;

 m = bio_get_m(bio);
 bio_set_m(bio, ((void*)0));

 if (likely(!error)) {
  bio_endio(bio, 0);
  return;
 }

 fail_mirror(m, DM_RAID1_READ_ERROR);

 if (likely(default_ok(m)) || mirror_available(m->ms, bio)) {
  DMWARN_LIMIT("Read failure on mirror device %s.  "
        "Trying alternative device.",
        m->dev->name);
  queue_bio(m->ms, bio, bio_rw(bio));
  return;
 }

 DMERR_LIMIT("Read failure on mirror device %s.  Failing I/O.",
      m->dev->name);
 bio_endio(bio, -EIO);
}
