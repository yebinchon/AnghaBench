
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int r10buf_pool; } ;
struct r10bio {TYPE_1__* mddev; } ;
struct TYPE_2__ {struct r10conf* private; } ;


 int lower_barrier (struct r10conf*) ;
 int mempool_free (struct r10bio*,int ) ;

__attribute__((used)) static void put_buf(struct r10bio *r10_bio)
{
 struct r10conf *conf = r10_bio->mddev->private;

 mempool_free(r10_bio, conf->r10buf_pool);

 lower_barrier(conf);
}
