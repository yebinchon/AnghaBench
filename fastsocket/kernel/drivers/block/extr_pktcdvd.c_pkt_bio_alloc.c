
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio {int bi_max_vecs; int bi_destructor; struct bio_vec* bi_io_vec; } ;


 int GFP_KERNEL ;
 int bio_init (struct bio*) ;
 struct bio_vec* kcalloc (int,int,int ) ;
 int kfree (struct bio*) ;
 struct bio* kmalloc (int,int ) ;
 int pkt_bio_destructor ;

__attribute__((used)) static struct bio *pkt_bio_alloc(int nr_iovecs)
{
 struct bio_vec *bvl = ((void*)0);
 struct bio *bio;

 bio = kmalloc(sizeof(struct bio), GFP_KERNEL);
 if (!bio)
  goto no_bio;
 bio_init(bio);

 bvl = kcalloc(nr_iovecs, sizeof(struct bio_vec), GFP_KERNEL);
 if (!bvl)
  goto no_bvl;

 bio->bi_max_vecs = nr_iovecs;
 bio->bi_io_vec = bvl;
 bio->bi_destructor = pkt_bio_destructor;

 return bio;

 no_bvl:
 kfree(bio);
 no_bio:
 return ((void*)0);
}
