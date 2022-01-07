
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fence; } ;
struct radeon_cs_parser {unsigned int nrelocs; unsigned int nchunks; TYPE_2__ const_ib; TYPE_1__* rdev; TYPE_2__ ib; TYPE_3__* chunks_array; TYPE_3__* chunks; TYPE_3__* relocs_ptr; TYPE_3__* relocs; TYPE_3__* track; int validated; } ;
struct TYPE_6__ {struct TYPE_6__** kpage; struct TYPE_6__* kdata; scalar_t__ gobj; } ;
struct TYPE_4__ {int flags; } ;


 int RADEON_IS_AGP ;
 int drm_gem_object_unreference_unlocked (scalar_t__) ;
 int kfree (TYPE_3__*) ;
 int radeon_ib_free (TYPE_1__*,TYPE_2__*) ;
 int ttm_eu_backoff_reservation (int *) ;
 int ttm_eu_fence_buffer_objects (int *,int ) ;

__attribute__((used)) static void radeon_cs_parser_fini(struct radeon_cs_parser *parser, int error)
{
 unsigned i;

 if (!error) {
  ttm_eu_fence_buffer_objects(&parser->validated,
         parser->ib.fence);
 } else {
  ttm_eu_backoff_reservation(&parser->validated);
 }

 if (parser->relocs != ((void*)0)) {
  for (i = 0; i < parser->nrelocs; i++) {
   if (parser->relocs[i].gobj)
    drm_gem_object_unreference_unlocked(parser->relocs[i].gobj);
  }
 }
 kfree(parser->track);
 kfree(parser->relocs);
 kfree(parser->relocs_ptr);
 for (i = 0; i < parser->nchunks; i++) {
  kfree(parser->chunks[i].kdata);
  if ((parser->rdev->flags & RADEON_IS_AGP)) {
   kfree(parser->chunks[i].kpage[0]);
   kfree(parser->chunks[i].kpage[1]);
  }
 }
 kfree(parser->chunks);
 kfree(parser->chunks_array);
 radeon_ib_free(parser->rdev, &parser->ib);
 radeon_ib_free(parser->rdev, &parser->const_ib);
}
