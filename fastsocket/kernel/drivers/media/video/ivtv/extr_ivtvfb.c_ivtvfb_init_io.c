
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_info {int video_rbase; int video_buffer_size; int video_pbase; int video_vbase; int fb_start_aligned_physaddr; int fb_end_aligned_physaddr; } ;
struct ivtv {int base_addr; int dec_mem; int serialize_lock; struct osd_info* osd_info; } ;


 int EIO ;
 int ENXIO ;
 int IVTVFB_ERR (char*,...) ;
 int IVTVFB_INFO (char*,...) ;
 int IVTV_DECODER_OFFSET ;
 int MTRR_TYPE_WRCOMB ;
 scalar_t__ ivtv_init_on_first_open (struct ivtv*) ;
 scalar_t__ ivtvfb_get_framebuffer (struct ivtv*,int*,int*) ;
 int memset_io (int,int ,int) ;
 scalar_t__ mtrr_add (int,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ivtvfb_init_io(struct ivtv *itv)
{
 struct osd_info *oi = itv->osd_info;

 mutex_lock(&itv->serialize_lock);
 if (ivtv_init_on_first_open(itv)) {
  mutex_unlock(&itv->serialize_lock);
  IVTVFB_ERR("Failed to initialize ivtv\n");
  return -ENXIO;
 }
 mutex_unlock(&itv->serialize_lock);

 if (ivtvfb_get_framebuffer(itv, &oi->video_rbase,
     &oi->video_buffer_size) < 0) {
  IVTVFB_ERR("Firmware failed to respond\n");
  return -EIO;
 }




 oi->video_buffer_size = 1704960;

 oi->video_pbase = itv->base_addr + IVTV_DECODER_OFFSET + oi->video_rbase;
 oi->video_vbase = itv->dec_mem + oi->video_rbase;

 if (!oi->video_vbase) {
  IVTVFB_ERR("abort, video memory 0x%x @ 0x%lx isn't mapped!\n",
       oi->video_buffer_size, oi->video_pbase);
  return -EIO;
 }

 IVTVFB_INFO("Framebuffer at 0x%lx, mapped to 0x%p, size %dk\n",
   oi->video_pbase, oi->video_vbase,
   oi->video_buffer_size / 1024);
 memset_io(oi->video_vbase, 0, oi->video_buffer_size);

 return 0;
}
