
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int BIO_RW_SYNCIO ;
 scalar_t__ READ ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;

__attribute__((used)) static inline bool cfq_bio_sync(struct bio *bio)
{
 return bio_data_dir(bio) == READ || bio_rw_flagged(bio, BIO_RW_SYNCIO);
}
