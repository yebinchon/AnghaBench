
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bio* bio_out; } ;
struct dm_crypt_io {TYPE_1__ ctx; } ;
struct bio {int dummy; } ;


 int generic_make_request (struct bio*) ;

__attribute__((used)) static void kcryptd_io_write(struct dm_crypt_io *io)
{
 struct bio *clone = io->ctx.bio_out;
 generic_make_request(clone);
}
