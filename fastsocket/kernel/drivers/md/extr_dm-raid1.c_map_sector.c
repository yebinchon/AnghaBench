
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror {TYPE_1__* ms; scalar_t__ offset; } ;
struct bio {int bi_sector; int bi_size; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int ti; } ;


 scalar_t__ dm_target_offset (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static sector_t map_sector(struct mirror *m, struct bio *bio)
{
 if (unlikely(!bio->bi_size))
  return 0;
 return m->offset + dm_target_offset(m->ms->ti, bio->bi_sector);
}
