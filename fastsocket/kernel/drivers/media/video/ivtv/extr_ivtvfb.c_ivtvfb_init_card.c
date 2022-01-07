
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_info {int dummy; } ;
struct ivtv {int ivtvfb_restore; TYPE_1__* osd_info; int osd_video_pbase; } ;
struct TYPE_2__ {int ivtvfb_info; int video_pbase; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_UNBLANK ;
 int GFP_ATOMIC ;
 int IVTVFB_ERR (char*,...) ;
 int __GFP_NOWARN ;
 int ivtv_udma_alloc (struct ivtv*) ;
 int ivtvfb_blank (int ,int *) ;
 int ivtvfb_card_id ;
 int ivtvfb_init_io (struct ivtv*) ;
 int ivtvfb_init_vidmode (struct ivtv*) ;
 int ivtvfb_release_buffers (struct ivtv*) ;
 int ivtvfb_restore ;
 int ivtvfb_set_par (int *) ;
 TYPE_1__* kzalloc (int,int) ;
 scalar_t__ register_framebuffer (int *) ;
 int write_reg (int ,int) ;

__attribute__((used)) static int ivtvfb_init_card(struct ivtv *itv)
{
 int rc;

 if (itv->osd_info) {
  IVTVFB_ERR("Card %d already initialised\n", ivtvfb_card_id);
  return -EBUSY;
 }

 itv->osd_info = kzalloc(sizeof(struct osd_info),
     GFP_ATOMIC|__GFP_NOWARN);
 if (itv->osd_info == ((void*)0)) {
  IVTVFB_ERR("Failed to allocate memory for osd_info\n");
  return -ENOMEM;
 }


 rc = ivtvfb_init_io(itv);
 if (rc) {
  ivtvfb_release_buffers(itv);
  return rc;
 }


 if ((rc = ivtvfb_init_vidmode(itv))) {
  ivtvfb_release_buffers(itv);
  return rc;
 }


 if (register_framebuffer(&itv->osd_info->ivtvfb_info) < 0) {
  ivtvfb_release_buffers(itv);
  return -EINVAL;
 }

 itv->osd_video_pbase = itv->osd_info->video_pbase;


 ivtvfb_set_par(&itv->osd_info->ivtvfb_info);


 write_reg(0, 0x02a30);
 write_reg(0, 0x02a34);


 ivtvfb_blank(FB_BLANK_UNBLANK, &itv->osd_info->ivtvfb_info);


 itv->ivtvfb_restore = ivtvfb_restore;


 ivtv_udma_alloc(itv);
 return 0;

}
