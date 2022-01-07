
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int prison; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int dm_bio_prison_free_cell (int ,struct dm_bio_prison_cell*) ;
 int dm_cell_error (int ,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void cell_error(struct pool *pool,
         struct dm_bio_prison_cell *cell)
{
 dm_cell_error(pool->prison, cell);
 dm_bio_prison_free_cell(pool->prison, cell);
}
