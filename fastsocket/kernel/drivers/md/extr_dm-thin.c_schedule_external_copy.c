
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int origin_dev; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;


 int schedule_copy (struct thin_c*,int ,int ,int ,int ,struct dm_bio_prison_cell*,struct bio*) ;

__attribute__((used)) static void schedule_external_copy(struct thin_c *tc, dm_block_t virt_block,
       dm_block_t data_dest,
       struct dm_bio_prison_cell *cell, struct bio *bio)
{
 schedule_copy(tc, virt_block, tc->origin_dev,
        virt_block, data_dest, cell, bio);
}
