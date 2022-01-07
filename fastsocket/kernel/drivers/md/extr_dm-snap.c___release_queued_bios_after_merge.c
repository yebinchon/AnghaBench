
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int bios_queued_during_merge; scalar_t__ num_merging_chunks; scalar_t__ first_merging_chunk; } ;
struct bio {int dummy; } ;


 struct bio* bio_list_get (int *) ;

__attribute__((used)) static struct bio *__release_queued_bios_after_merge(struct dm_snapshot *s)
{
 s->first_merging_chunk = 0;
 s->num_merging_chunks = 0;

 return bio_list_get(&s->bios_queued_during_merge);
}
