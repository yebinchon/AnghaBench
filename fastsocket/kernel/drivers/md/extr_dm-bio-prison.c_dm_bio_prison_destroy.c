
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison {int cell_pool; } ;


 int kfree (struct dm_bio_prison*) ;
 int mempool_destroy (int ) ;

void dm_bio_prison_destroy(struct dm_bio_prison *prison)
{
 mempool_destroy(prison->cell_pool);
 kfree(prison);
}
