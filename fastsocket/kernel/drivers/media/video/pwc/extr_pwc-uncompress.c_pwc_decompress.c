
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct pwc_raw_frame {struct pwc_raw_frame* cmd; void* vbandlength; void* type; } ;
struct pwc_frame_buf {void* data; } ;
struct TYPE_8__ {int x; int y; } ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int y; int x; } ;
struct pwc_device {size_t fill_image; int frame_header_size; scalar_t__ pixfmt; scalar_t__ type; scalar_t__ vbandlength; void* cmd_buf; int frame_size; scalar_t__ vsize; int vframes; scalar_t__ vsnapshot; TYPE_4__ image; TYPE_3__ view; TYPE_2__ offset; TYPE_1__* images; void* image_data; struct pwc_frame_buf* read_frame; } ;
struct TYPE_5__ {int offset; } ;


 scalar_t__ DEVICE_USE_CODEC1 (scalar_t__) ;
 int EFAULT ;
 int ENXIO ;
 scalar_t__ PSZ_VGA ;
 int PWCX_FLAG_PLANAR ;
 int PWC_ERROR (char*) ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 void* cpu_to_le16 (scalar_t__) ;
 int memcpy (struct pwc_raw_frame*,void*,int) ;
 int pwc_dec23_decompress (struct pwc_device*,void*,void*,int ) ;

int pwc_decompress(struct pwc_device *pdev)
{
 struct pwc_frame_buf *fbuf;
 int n, line, col, stride;
 void *yuv, *image;
 u16 *src;
 u16 *dsty, *dstu, *dstv;

 if (pdev == ((void*)0))
  return -EFAULT;

 fbuf = pdev->read_frame;
 if (fbuf == ((void*)0))
  return -EFAULT;
 image = pdev->image_data;
 image += pdev->images[pdev->fill_image].offset;

 yuv = fbuf->data + pdev->frame_header_size;


 if (pdev->pixfmt != V4L2_PIX_FMT_YUV420)
 {
  struct pwc_raw_frame *raw_frame = image;
  raw_frame->type = cpu_to_le16(pdev->type);
  raw_frame->vbandlength = cpu_to_le16(pdev->vbandlength);



  memcpy(raw_frame->cmd, pdev->cmd_buf, 4);
  memcpy(raw_frame+1, yuv, pdev->frame_size);
  return 0;
 }

 if (pdev->vbandlength == 0) {
  src = (u16 *)yuv;
  n = pdev->view.x * pdev->view.y;


  stride = pdev->view.x * pdev->offset.y + pdev->offset.x;
  dsty = (u16 *)(image + stride);


  stride = pdev->view.x * pdev->offset.y / 4 + pdev->offset.x / 2;
  dstu = (u16 *)(image + n + stride);
  dstv = (u16 *)(image + n + n / 4 + stride);


  stride = (pdev->view.x - pdev->image.x) / 2;

  for (line = 0; line < pdev->image.y; line++) {
   for (col = 0; col < pdev->image.x; col += 4) {
    *dsty++ = *src++;
    *dsty++ = *src++;
    if (line & 1)
     *dstv++ = *src++;
    else
     *dstu++ = *src++;
   }
   dsty += stride;
   if (line & 1)
    dstv += (stride >> 1);
   else
    dstu += (stride >> 1);
  }

  return 0;
 }






 if (pdev->vsize == PSZ_VGA && pdev->vframes == 5 && pdev->vsnapshot) {
  PWC_ERROR("Mode Bayer is not supported for now\n");

  return -ENXIO;
 }

 if (DEVICE_USE_CODEC1(pdev->type)) {


  PWC_ERROR("This chipset is not supported for now\n");
  return -ENXIO;

 } else {
  pwc_dec23_decompress(pdev, yuv, image, PWCX_FLAG_PLANAR);
 }
 return 0;
}
