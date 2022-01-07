
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int aff_flags; int * aff_ref_spu; int aff_sched_count; } ;
struct spu_context {struct spu_gang* gang; int aff_list; } ;


 int AFF_MERGED ;
 int AFF_OFFSETS_SET ;
 int aff_merge_remaining_ctxs (struct spu_gang*) ;
 int aff_set_offsets (struct spu_gang*) ;
 int aff_set_ref_point_location (struct spu_gang*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int has_affinity(struct spu_context *ctx)
{
 struct spu_gang *gang = ctx->gang;

 if (list_empty(&ctx->aff_list))
  return 0;

 if (atomic_read(&ctx->gang->aff_sched_count) == 0)
  ctx->gang->aff_ref_spu = ((void*)0);

 if (!gang->aff_ref_spu) {
  if (!(gang->aff_flags & AFF_MERGED))
   aff_merge_remaining_ctxs(gang);
  if (!(gang->aff_flags & AFF_OFFSETS_SET))
   aff_set_offsets(gang);
  aff_set_ref_point_location(gang);
 }

 return gang->aff_ref_spu != ((void*)0);
}
