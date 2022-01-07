
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {TYPE_1__* target; } ;
struct crypt_config {int bs; } ;
struct bio {struct dm_crypt_io* bi_private; } ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int bio_free (struct bio*,int ) ;

__attribute__((used)) static void dm_crypt_bio_destructor(struct bio *bio)
{
 struct dm_crypt_io *io = bio->bi_private;
 struct crypt_config *cc = io->target->private;

 bio_free(bio, cc->bs);
}
