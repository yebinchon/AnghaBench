
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int io_context; } ;
struct request {int dummy; } ;
struct cfq_queue {int sort_list; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;
struct bio {scalar_t__ bi_sector; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ bio_sectors (struct bio*) ;
 int cfq_bio_sync (struct bio*) ;
 struct cfq_io_context* cfq_cic_lookup (struct cfq_data*,int ) ;
 struct cfq_queue* cic_to_cfqq (struct cfq_io_context*,int ) ;
 struct task_struct* current ;
 struct request* elv_rb_find (int *,scalar_t__) ;

__attribute__((used)) static struct request *
cfq_find_rq_fmerge(struct cfq_data *cfqd, struct bio *bio)
{
 struct task_struct *tsk = current;
 struct cfq_io_context *cic;
 struct cfq_queue *cfqq;

 cic = cfq_cic_lookup(cfqd, tsk->io_context);
 if (!cic)
  return ((void*)0);

 cfqq = cic_to_cfqq(cic, cfq_bio_sync(bio));
 if (cfqq) {
  sector_t sector = bio->bi_sector + bio_sectors(bio);

  return elv_rb_find(&cfqq->sort_list, sector);
 }

 return ((void*)0);
}
