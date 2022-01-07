
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int list; int bios; struct bio* holder; int key; } ;
struct dm_bio_prison {scalar_t__ cells; } ;
struct bio {int dummy; } ;


 int bio_list_init (int *) ;
 int hlist_add_head (int *,scalar_t__) ;
 int memcpy (int *,struct dm_cell_key*,int) ;

__attribute__((used)) static void __setup_new_cell(struct dm_bio_prison *prison,
        struct dm_cell_key *key,
        struct bio *holder,
        uint32_t hash,
        struct dm_bio_prison_cell *cell)
{
 memcpy(&cell->key, key, sizeof(cell->key));
 cell->holder = holder;
 bio_list_init(&cell->bios);
 hlist_add_head(&cell->list, prison->cells + hash);
}
