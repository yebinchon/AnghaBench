
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int dummy; } ;
struct bio {int dummy; } ;


 int bio_detain (struct dm_bio_prison*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell*,struct dm_bio_prison_cell**) ;

int dm_bio_detain(struct dm_bio_prison *prison,
    struct dm_cell_key *key,
    struct bio *inmate,
    struct dm_bio_prison_cell *cell_prealloc,
    struct dm_bio_prison_cell **cell_result)
{
 return bio_detain(prison, key, inmate, cell_prealloc, cell_result);
}
