
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int sc; } ;
struct bio_list {int dummy; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct TYPE_4__ {TYPE_1__ set; } ;


 struct bio_list* BL_CHUNK (struct stripe_chunk*,int ) ;
 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 TYPE_2__* RS (int ) ;
 int SetChunkIo (struct stripe_chunk*) ;
 int WRITE ;
 int WRITE_QUEUED ;
 int bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;

__attribute__((used)) static int stripe_queue_writes(struct stripe *stripe)
{
 int r = 0;
 unsigned p = RS(stripe->sc)->set.raid_devs;

 while (p--) {
  struct stripe_chunk *chunk = CHUNK(stripe, p);
  struct bio_list *write = BL_CHUNK(chunk, WRITE);

  if (!bio_list_empty(write)) {
   bio_list_merge(BL_CHUNK(chunk, WRITE_QUEUED), write);
   bio_list_init(write);
SetChunkIo(chunk);
   r = 1;
  }
 }

 return r;
}
