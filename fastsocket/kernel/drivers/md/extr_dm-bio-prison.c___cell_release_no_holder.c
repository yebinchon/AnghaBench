
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int bios; int list; } ;
struct bio_list {int dummy; } ;


 int bio_list_merge (struct bio_list*,int *) ;
 int hlist_del (int *) ;

__attribute__((used)) static void __cell_release_no_holder(struct dm_bio_prison_cell *cell,
         struct bio_list *inmates)
{
 hlist_del(&cell->list);
 bio_list_merge(inmates, &cell->bios);
}
