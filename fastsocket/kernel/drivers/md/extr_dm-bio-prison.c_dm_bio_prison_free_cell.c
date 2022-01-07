
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int cell_pool; } ;


 int mempool_free (struct dm_bio_prison_cell*,int ) ;

void dm_bio_prison_free_cell(struct dm_bio_prison *prison,
        struct dm_bio_prison_cell *cell)
{
 mempool_free(cell, prison->cell_pool);
}
