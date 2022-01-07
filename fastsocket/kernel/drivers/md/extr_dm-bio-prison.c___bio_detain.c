
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int bios; } ;
struct dm_bio_prison {scalar_t__ cells; } ;
struct bio {int dummy; } ;


 struct dm_bio_prison_cell* __search_bucket (scalar_t__,struct dm_cell_key*) ;
 int __setup_new_cell (struct dm_bio_prison*,struct dm_cell_key*,struct bio*,scalar_t__,struct dm_bio_prison_cell*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ hash_key (struct dm_bio_prison*,struct dm_cell_key*) ;

__attribute__((used)) static int __bio_detain(struct dm_bio_prison *prison,
   struct dm_cell_key *key,
   struct bio *inmate,
   struct dm_bio_prison_cell *cell_prealloc,
   struct dm_bio_prison_cell **cell_result)
{
 uint32_t hash = hash_key(prison, key);
 struct dm_bio_prison_cell *cell;

 cell = __search_bucket(prison->cells + hash, key);
 if (cell) {
  if (inmate)
   bio_list_add(&cell->bios, inmate);
  *cell_result = cell;
  return 1;
 }

 __setup_new_cell(prison, key, inmate, hash, cell_prealloc);
 *cell_result = cell_prealloc;
 return 0;
}
