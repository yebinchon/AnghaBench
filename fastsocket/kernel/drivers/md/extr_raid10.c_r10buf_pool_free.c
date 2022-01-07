
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r10conf {int copies; } ;
struct r10bio {TYPE_2__* devs; } ;
struct bio {TYPE_1__* bi_io_vec; } ;
struct TYPE_4__ {struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_3__ {int * bv_page; } ;


 int RESYNC_PAGES ;
 int bio_put (struct bio*) ;
 int r10bio_pool_free (struct r10bio*,struct r10conf*) ;
 int safe_put_page (int *) ;

__attribute__((used)) static void r10buf_pool_free(void *__r10_bio, void *data)
{
 int i;
 struct r10conf *conf = data;
 struct r10bio *r10bio = __r10_bio;
 int j;

 for (j=0; j < conf->copies; j++) {
  struct bio *bio = r10bio->devs[j].bio;
  if (bio) {
   for (i = 0; i < RESYNC_PAGES; i++) {
    safe_put_page(bio->bi_io_vec[i].bv_page);
    bio->bi_io_vec[i].bv_page = ((void*)0);
   }
   bio_put(bio);
  }
  bio = r10bio->devs[j].repl_bio;
  if (bio)
   bio_put(bio);
 }
 r10bio_pool_free(r10bio, conf);
}
