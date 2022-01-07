
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; } ;



__attribute__((used)) static inline struct bio *pkt_get_list_first(struct bio **list_head, struct bio **list_tail)
{
 struct bio *bio;

 if (*list_head == ((void*)0))
  return ((void*)0);

 bio = *list_head;
 *list_head = bio->bi_next;
 if (*list_head == ((void*)0))
  *list_tail = ((void*)0);

 bio->bi_next = ((void*)0);
 return bio;
}
