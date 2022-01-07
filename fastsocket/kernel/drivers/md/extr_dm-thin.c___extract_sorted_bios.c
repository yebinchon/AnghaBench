
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int sort_bio_list; int deferred_bio_list; } ;
struct rb_node {int dummy; } ;
struct dm_thin_endio_hook {int rb_node; } ;
struct bio {int dummy; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 int bio_list_add (int *,struct bio*) ;
 int rb_erase (int *,int *) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct bio* thin_bio (struct dm_thin_endio_hook*) ;
 struct dm_thin_endio_hook* thin_pbd (struct rb_node*) ;

__attribute__((used)) static void __extract_sorted_bios(struct thin_c *tc)
{
 struct rb_node *node;
 struct dm_thin_endio_hook *pbd;
 struct bio *bio;

 for (node = rb_first(&tc->sort_bio_list); node; node = rb_next(node)) {
  pbd = thin_pbd(node);
  bio = thin_bio(pbd);

  bio_list_add(&tc->deferred_bio_list, bio);
  rb_erase(&pbd->rb_node, &tc->sort_bio_list);
 }

 WARN_ON(!RB_EMPTY_ROOT(&tc->sort_bio_list));
}
