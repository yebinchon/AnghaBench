
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static void pkt_add_list_last(struct bio *bio, struct bio **list_head, struct bio **list_tail)
{
 bio->bi_next = ((void*)0);
 if (*list_tail) {
  BUG_ON((*list_head) == ((void*)0));
  (*list_tail)->bi_next = bio;
  (*list_tail) = bio;
 } else {
  BUG_ON((*list_head) != ((void*)0));
  (*list_head) = bio;
  (*list_tail) = bio;
 }
}
