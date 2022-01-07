
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 int WRITE ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int queue_bio (struct mirror_set*,struct bio*,int ) ;

__attribute__((used)) static void dispatch_bios(void *context, struct bio_list *bio_list)
{
 struct mirror_set *ms = context;
 struct bio *bio;

 while ((bio = bio_list_pop(bio_list)))
  queue_bio(ms, bio, WRITE);
}
