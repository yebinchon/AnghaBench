
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {void* context; int (* callback ) (int,void*) ;struct dm_io_client* client; int * sleeper; int count; scalar_t__ error_bits; } ;
struct dpages {int dummy; } ;
struct dm_io_region {int dummy; } ;
struct dm_io_client {int pool; } ;
typedef int (* io_notify_fn ) (int,void*) ;


 int EIO ;
 int GFP_NOIO ;
 int RW_MASK ;
 int WARN_ON (int) ;
 int WRITE ;
 int atomic_set (int *,int) ;
 int dispatch_io (int,unsigned int,struct dm_io_region*,struct dpages*,struct io*,int ) ;
 struct io* mempool_alloc (int ,int ) ;

__attribute__((used)) static int async_io(struct dm_io_client *client, unsigned int num_regions,
      struct dm_io_region *where, int rw, struct dpages *dp,
      io_notify_fn fn, void *context)
{
 struct io *io;

 if (num_regions > 1 && (rw & RW_MASK) != WRITE) {
  WARN_ON(1);
  fn(1, context);
  return -EIO;
 }

 io = mempool_alloc(client->pool, GFP_NOIO);
 io->error_bits = 0;
 atomic_set(&io->count, 1);
 io->sleeper = ((void*)0);
 io->client = client;
 io->callback = fn;
 io->context = context;

 dispatch_io(rw, num_regions, where, dp, io, 0);
 return 0;
}
