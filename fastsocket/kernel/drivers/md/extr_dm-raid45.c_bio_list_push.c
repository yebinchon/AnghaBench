
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {struct bio* tail; struct bio* head; } ;
struct bio {struct bio* bi_next; } ;



__attribute__((used)) static inline void bio_list_push(struct bio_list *bl, struct bio *bio)
{
 bio->bi_next = bl->head;
 bl->head = bio;

 if (!bl->tail)
  bl->tail = bio;
}
