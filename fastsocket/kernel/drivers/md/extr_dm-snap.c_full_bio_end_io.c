
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {void* bi_private; } ;


 int dm_kcopyd_do_callback (void*,int ,int) ;

__attribute__((used)) static void full_bio_end_io(struct bio *bio, int error)
{
 void *callback_data = bio->bi_private;

 dm_kcopyd_do_callback(callback_data, 0, error ? 1 : 0);
}
