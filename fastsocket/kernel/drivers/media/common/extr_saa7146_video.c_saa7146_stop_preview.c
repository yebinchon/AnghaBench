
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_vv {int video_status; struct saa7146_fh* video_fh; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int EBUSY ;
 scalar_t__ IS_CAPTURE_ACTIVE (struct saa7146_fh*) ;
 int RESOURCE_DMA1_HPS ;
 int RESOURCE_DMA2_CLP ;
 int STATUS_OVERLAY ;
 int saa7146_disable_overlay (struct saa7146_fh*) ;
 int saa7146_res_free (struct saa7146_fh*,int) ;

int saa7146_stop_preview(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;

 DEB_EE(("dev:%p, fh:%p\n",dev,fh));


 if (IS_CAPTURE_ACTIVE(fh) != 0) {
  DEB_D(("streaming capture is active.\n"));
  return -EBUSY;
 }


 if ((vv->video_status & STATUS_OVERLAY) == 0) {
  DEB_D(("no active overlay.\n"));
  return 0;
 }

 if (vv->video_fh != fh) {
  DEB_D(("overlay is active, but in another open.\n"));
  return -EBUSY;
 }

 vv->video_status = 0;
 vv->video_fh = ((void*)0);

 saa7146_disable_overlay(fh);

 saa7146_res_free(fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);

 return 0;
}
