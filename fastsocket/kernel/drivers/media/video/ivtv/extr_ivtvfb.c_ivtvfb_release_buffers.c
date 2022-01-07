
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {struct osd_info* pseudo_palette; TYPE_2__ cmap; } ;
struct osd_info {scalar_t__ fb_start_aligned_physaddr; scalar_t__ fb_end_aligned_physaddr; TYPE_1__ ivtvfb_info; } ;
struct ivtv {struct osd_info* osd_info; } ;


 int fb_dealloc_cmap (TYPE_2__*) ;
 int kfree (struct osd_info*) ;
 int mtrr_del (int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ivtvfb_release_buffers (struct ivtv *itv)
{
 struct osd_info *oi = itv->osd_info;


 if (oi->ivtvfb_info.cmap.len)
  fb_dealloc_cmap(&oi->ivtvfb_info.cmap);


 if (oi->ivtvfb_info.pseudo_palette)
  kfree(oi->ivtvfb_info.pseudo_palette);
 kfree(oi);
 itv->osd_info = ((void*)0);
}
