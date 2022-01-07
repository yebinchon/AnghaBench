
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {struct bio* bi_next; } ;
struct TYPE_2__ {struct bio** bio_tail; struct bio* bio_list; } ;


 int BUG_ON (struct bio*) ;
 int __generic_make_request (struct bio*) ;
 TYPE_1__* current ;

void generic_make_request(struct bio *bio)
{
 if (current->bio_tail) {

  *(current->bio_tail) = bio;
  bio->bi_next = ((void*)0);
  current->bio_tail = &bio->bi_next;
  return;
 }
 BUG_ON(bio->bi_next);
 do {
  current->bio_list = bio->bi_next;
  if (bio->bi_next == ((void*)0))
   current->bio_tail = &current->bio_list;
  else
   bio->bi_next = ((void*)0);
  __generic_make_request(bio);
  bio = current->bio_list;
 } while (bio);
 current->bio_tail = ((void*)0);
}
