
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int r1bio_pool; } ;
struct r1bio {TYPE_1__* mddev; } ;
struct TYPE_2__ {struct r1conf* private; } ;


 int mempool_free (struct r1bio*,int ) ;
 int put_all_bios (struct r1conf*,struct r1bio*) ;

__attribute__((used)) static void free_r1bio(struct r1bio *r1_bio)
{
 struct r1conf *conf = r1_bio->mddev->private;

 put_all_bios(conf, r1_bio);
 mempool_free(r1_bio, conf->r1bio_pool);
}
