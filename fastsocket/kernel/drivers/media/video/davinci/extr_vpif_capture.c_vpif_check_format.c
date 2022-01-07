
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_11__ {scalar_t__ if_type; } ;
struct vpif_params {TYPE_1__ std_info; TYPE_5__ iface; } ;
struct v4l2_pix_format {int field; scalar_t__ pixelformat; int bytesperline; int sizeimage; int height; int width; } ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_9__ {TYPE_2__ pix; } ;
struct TYPE_10__ {TYPE_3__ fmt; } ;
struct common_obj {scalar_t__ memory; TYPE_4__ fmt; } ;
struct channel_obj {size_t channel_id; struct vpif_params vpifparams; struct common_obj* common; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_12__ {int* channel_bufsize; } ;


 int ALIGN (int,int) ;
 int EINVAL ;
 int V4L2_FIELD_ANY ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ;
 scalar_t__ V4L2_PIX_FMT_YUV422P ;
 scalar_t__ VPIF_IF_RAW_BAYER ;
 int VPIF_VALID_FIELD (int) ;
 size_t VPIF_VIDEO_INDEX ;
 TYPE_6__ config_params ;
 int debug ;
 int vpif_dbg (int,int ,char*) ;
 int vpif_get_default_field (TYPE_5__*) ;

__attribute__((used)) static int vpif_check_format(struct channel_obj *ch,
        struct v4l2_pix_format *pixfmt,
        int update)
{
 struct common_obj *common = &(ch->common[VPIF_VIDEO_INDEX]);
 struct vpif_params *vpif_params = &ch->vpifparams;
 enum v4l2_field field = pixfmt->field;
 u32 sizeimage, hpitch, vpitch;
 int ret = -EINVAL;

 vpif_dbg(2, debug, "vpif_check_format\n");





 if (vpif_params->iface.if_type == VPIF_IF_RAW_BAYER) {
  if (pixfmt->pixelformat != V4L2_PIX_FMT_SBGGR8) {
   if (!update) {
    vpif_dbg(2, debug, "invalid pix format\n");
    goto exit;
   }
   pixfmt->pixelformat = V4L2_PIX_FMT_SBGGR8;
  }
 } else {
  if (pixfmt->pixelformat != V4L2_PIX_FMT_YUV422P) {
   if (!update) {
    vpif_dbg(2, debug, "invalid pixel format\n");
    goto exit;
   }
   pixfmt->pixelformat = V4L2_PIX_FMT_YUV422P;
  }
 }

 if (!(VPIF_VALID_FIELD(field))) {
  if (!update) {
   vpif_dbg(2, debug, "invalid field format\n");
   goto exit;
  }




  field = vpif_get_default_field(&vpif_params->iface);
 } else if (field == V4L2_FIELD_ANY)

  field = vpif_get_default_field(&vpif_params->iface);


 hpitch = pixfmt->bytesperline;
 if (hpitch < vpif_params->std_info.width) {
  if (!update) {
   vpif_dbg(2, debug, "invalid hpitch\n");
   goto exit;
  }
  hpitch = vpif_params->std_info.width;
 }

 if (V4L2_MEMORY_USERPTR == common->memory)
  sizeimage = pixfmt->sizeimage;
 else
  sizeimage = config_params.channel_bufsize[ch->channel_id];

 vpitch = sizeimage / (hpitch * 2);


 if (vpitch < vpif_params->std_info.height) {
  if (!update) {
   vpif_dbg(2, debug, "Invalid vpitch\n");
   goto exit;
  }
  vpitch = vpif_params->std_info.height;
 }


 if (!ALIGN(hpitch, 8)) {
  if (!update) {
   vpif_dbg(2, debug, "invalid pitch alignment\n");
   goto exit;
  }

  hpitch = (((hpitch + 7) / 8) * 8);
 }

 if (update) {
  pixfmt->bytesperline = hpitch;
  pixfmt->sizeimage = hpitch * vpitch * 2;
 }




 pixfmt->width = common->fmt.fmt.pix.width;
 pixfmt->height = common->fmt.fmt.pix.height;
 return 0;
exit:
 return ret;
}
