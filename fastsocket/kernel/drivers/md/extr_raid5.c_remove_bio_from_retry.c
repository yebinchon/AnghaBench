
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct bio* retry_read_aligned_list; struct bio* retry_read_aligned; } ;
struct bio {struct bio* bi_next; } ;


 int raid5_set_bi_stripes (struct bio*,int) ;

__attribute__((used)) static struct bio *remove_bio_from_retry(struct r5conf *conf)
{
 struct bio *bi;

 bi = conf->retry_read_aligned;
 if (bi) {
  conf->retry_read_aligned = ((void*)0);
  return bi;
 }
 bi = conf->retry_read_aligned_list;
 if(bi) {
  conf->retry_read_aligned_list = bi->bi_next;
  bi->bi_next = ((void*)0);




  raid5_set_bi_stripes(bi, 1);
 }

 return bi;
}
