
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_crypt_io {TYPE_1__* base_bio; TYPE_2__* target; } ;
struct crypt_config {TYPE_3__* dev; } ;
struct bio {int bi_destructor; int bi_rw; int bi_bdev; int bi_end_io; struct dm_crypt_io* bi_private; } ;
struct TYPE_6__ {int bdev; } ;
struct TYPE_5__ {struct crypt_config* private; } ;
struct TYPE_4__ {int bi_rw; } ;


 int crypt_endio ;
 int dm_crypt_bio_destructor ;

__attribute__((used)) static void clone_init(struct dm_crypt_io *io, struct bio *clone)
{
 struct crypt_config *cc = io->target->private;

 clone->bi_private = io;
 clone->bi_end_io = crypt_endio;
 clone->bi_bdev = cc->dev->bdev;
 clone->bi_rw = io->base_bio->bi_rw;
 clone->bi_destructor = dm_crypt_bio_destructor;
}
