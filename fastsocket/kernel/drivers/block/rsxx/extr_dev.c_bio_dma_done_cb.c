
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {scalar_t__ gendisk; int eeh_state; } ;
struct rsxx_bio_meta {int error; int bio; int start_time; int pending_dmas; } ;


 int EIO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bio_endio (int ,int ) ;
 int bio_meta_pool ;
 int disk_stats_complete (struct rsxx_cardinfo*,int ,int ) ;
 int kmem_cache_free (int ,struct rsxx_bio_meta*) ;

__attribute__((used)) static void bio_dma_done_cb(struct rsxx_cardinfo *card,
       void *cb_data,
       unsigned int error)
{
 struct rsxx_bio_meta *meta = cb_data;

 if (error)
  atomic_set(&meta->error, 1);

 if (atomic_dec_and_test(&meta->pending_dmas)) {
  if (!card->eeh_state && card->gendisk)
   disk_stats_complete(card, meta->bio, meta->start_time);

  bio_endio(meta->bio, atomic_read(&meta->error) ? -EIO : 0);
  kmem_cache_free(bio_meta_pool, meta);
 }
}
