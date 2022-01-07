
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_io_vec; } ;


 int kfree (struct bio*) ;

__attribute__((used)) static void pkt_bio_destructor(struct bio *bio)
{
 kfree(bio->bi_io_vec);
 kfree(bio);
}
