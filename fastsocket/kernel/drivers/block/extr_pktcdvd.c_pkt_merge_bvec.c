
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct pktcdvd_device* queuedata; } ;
struct TYPE_2__ {int size; } ;
struct pktcdvd_device {TYPE_1__ settings; } ;
struct bvec_merge_data {int bi_sector; int bi_size; } ;
struct bio_vec {int dummy; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int ZONE (int,struct pktcdvd_device*) ;
 int max (int,int) ;

__attribute__((used)) static int pkt_merge_bvec(struct request_queue *q, struct bvec_merge_data *bmd,
     struct bio_vec *bvec)
{
 struct pktcdvd_device *pd = q->queuedata;
 sector_t zone = ZONE(bmd->bi_sector, pd);
 int used = ((bmd->bi_sector - zone) << 9) + bmd->bi_size;
 int remaining = (pd->settings.size << 9) - used;
 int remaining2;





 remaining2 = PAGE_SIZE - bmd->bi_size;
 remaining = max(remaining, remaining2);

 BUG_ON(remaining < 0);
 return remaining;
}
