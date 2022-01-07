
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int prison; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio_list {int dummy; } ;


 int dm_bio_prison_free_cell (int ,struct dm_bio_prison_cell*) ;
 int dm_cell_release_no_holder (int ,struct dm_bio_prison_cell*,struct bio_list*) ;

__attribute__((used)) static void cell_release_no_holder(struct pool *pool,
       struct dm_bio_prison_cell *cell,
       struct bio_list *bios)
{
 dm_cell_release_no_holder(pool->prison, cell, bios);
 dm_bio_prison_free_cell(pool->prison, cell);
}
