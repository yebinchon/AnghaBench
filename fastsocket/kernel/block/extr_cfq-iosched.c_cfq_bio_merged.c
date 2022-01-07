
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int blkg; } ;


 TYPE_1__* RQ_CFQG (struct request*) ;
 int bio_data_dir (struct bio*) ;
 int cfq_bio_sync (struct bio*) ;
 int cfq_blkiocg_update_io_merged_stats (int *,int ,int ) ;

__attribute__((used)) static void cfq_bio_merged(struct request_queue *q, struct request *req,
    struct bio *bio)
{
 cfq_blkiocg_update_io_merged_stats(&(RQ_CFQG(req))->blkg,
     bio_data_dir(bio), cfq_bio_sync(bio));
}
