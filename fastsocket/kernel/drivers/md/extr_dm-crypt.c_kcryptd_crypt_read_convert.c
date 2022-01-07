
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pending; } ;
struct dm_crypt_io {TYPE_2__ ctx; int sector; int base_bio; TYPE_1__* target; } ;
struct crypt_config {int dummy; } ;
struct TYPE_4__ {struct crypt_config* private; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int crypt_convert (struct crypt_config*,TYPE_2__*) ;
 int crypt_convert_init (struct crypt_config*,TYPE_2__*,int ,int ,int ) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 int kcryptd_crypt_read_done (struct dm_crypt_io*,int) ;

__attribute__((used)) static void kcryptd_crypt_read_convert(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->target->private;
 int r = 0;

 crypt_inc_pending(io);

 crypt_convert_init(cc, &io->ctx, io->base_bio, io->base_bio,
      io->sector);

 r = crypt_convert(cc, &io->ctx);

 if (atomic_dec_and_test(&io->ctx.pending))
  kcryptd_crypt_read_done(io, r);

 crypt_dec_pending(io);
}
