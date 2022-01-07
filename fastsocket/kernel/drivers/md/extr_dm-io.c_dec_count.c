
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {unsigned long error_bits; TYPE_1__* client; void* context; int (* callback ) (unsigned long,void*) ;scalar_t__ sleeper; int count; } ;
typedef int (* io_notify_fn ) (unsigned long,void*) ;
struct TYPE_2__ {int pool; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int mempool_free (struct io*,int ) ;
 int set_bit (unsigned int,unsigned long*) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void dec_count(struct io *io, unsigned int region, int error)
{
 if (error)
  set_bit(region, &io->error_bits);

 if (atomic_dec_and_test(&io->count)) {
  if (io->sleeper)
   wake_up_process(io->sleeper);

  else {
   unsigned long r = io->error_bits;
   io_notify_fn fn = io->callback;
   void *context = io->context;

   mempool_free(io, io->client->pool);
   fn(r, context);
  }
 }
}
