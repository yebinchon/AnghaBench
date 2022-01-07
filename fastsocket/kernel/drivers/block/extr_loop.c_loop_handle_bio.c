
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int dummy; } ;
struct bio {int bi_private; int bi_bdev; } ;


 int bio_endio (struct bio*,int) ;
 int bio_put (struct bio*) ;
 int do_bio_filebacked (struct loop_device*,struct bio*) ;
 int do_loop_switch (struct loop_device*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void loop_handle_bio(struct loop_device *lo, struct bio *bio)
{
 if (unlikely(!bio->bi_bdev)) {
  do_loop_switch(lo, bio->bi_private);
  bio_put(bio);
 } else {
  int ret = do_bio_filebacked(lo, bio);
  bio_endio(bio, ret);
 }
}
