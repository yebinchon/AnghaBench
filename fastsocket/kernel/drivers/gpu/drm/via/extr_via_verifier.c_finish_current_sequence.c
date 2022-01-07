
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int unfinished; unsigned int* tex_level_lo; size_t texture; unsigned int* tex_level_hi; size_t** t_addr; size_t** pitch; size_t** height; int* tex_npot; int dev; int agp_texture; int d_addr; int z_addr; } ;
typedef TYPE_1__ drm_via_state_t ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;

 int no_sequence ;

 int via_drm_lookup_agp_map (TYPE_1__*,unsigned long,unsigned long,int ) ;


__attribute__((used)) static __inline__ int finish_current_sequence(drm_via_state_t * cur_seq)
{
 switch (cur_seq->unfinished) {
 case 128:
  DRM_DEBUG("Z Buffer start address is 0x%x\n", cur_seq->z_addr);
  break;
 case 130:
  DRM_DEBUG("Destination start address is 0x%x\n",
     cur_seq->d_addr);
  break;
 case 129:
  if (cur_seq->agp_texture) {
   unsigned start =
       cur_seq->tex_level_lo[cur_seq->texture];
   unsigned end = cur_seq->tex_level_hi[cur_seq->texture];
   unsigned long lo = ~0, hi = 0, tmp;
   uint32_t *addr, *pitch, *height, tex;
   unsigned i;
   int npot;

   if (end > 9)
    end = 9;
   if (start > 9)
    start = 9;

   addr =
       &(cur_seq->t_addr[tex = cur_seq->texture][start]);
   pitch = &(cur_seq->pitch[tex][start]);
   height = &(cur_seq->height[tex][start]);
   npot = cur_seq->tex_npot[tex];
   for (i = start; i <= end; ++i) {
    tmp = *addr++;
    if (tmp < lo)
     lo = tmp;
    if (i == 0 && npot)
     tmp += (*height++ * *pitch++);
    else
     tmp += (*height++ << *pitch++);
    if (tmp > hi)
     hi = tmp;
   }

   if (!via_drm_lookup_agp_map
       (cur_seq, lo, hi - lo, cur_seq->dev)) {
    DRM_ERROR
        ("AGP texture is not in allowed map\n");
    return 2;
   }
  }
  break;
 default:
  break;
 }
 cur_seq->unfinished = no_sequence;
 return 0;
}
