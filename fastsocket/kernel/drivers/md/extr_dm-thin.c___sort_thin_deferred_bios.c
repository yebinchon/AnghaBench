
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct thin_c {struct bio_list deferred_bio_list; } ;
struct bio {int dummy; } ;


 int __extract_sorted_bios (struct thin_c*) ;
 int __thin_bio_rb_add (struct thin_c*,struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;

__attribute__((used)) static void __sort_thin_deferred_bios(struct thin_c *tc)
{
 struct bio *bio;
 struct bio_list bios;

 bio_list_init(&bios);
 bio_list_merge(&bios, &tc->deferred_bio_list);
 bio_list_init(&tc->deferred_bio_list);


 while ((bio = bio_list_pop(&bios)))
  __thin_bio_rb_add(tc, bio);






 __extract_sorted_bios(tc);
}
