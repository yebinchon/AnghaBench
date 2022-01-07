
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_io {int error; } ;


 int EIO ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void kcryptd_crypt_read_done(struct dm_crypt_io *io, int error)
{
 if (unlikely(error < 0))
  io->error = -EIO;

 crypt_dec_pending(io);
}
