
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pwc_frame_buf {int dummy; } ;
struct pwc_device {int len_per_image; TYPE_3__* images; void* image_data; int type; TYPE_2__* fbuf; TYPE_1__* sbuf; } ;
struct TYPE_6__ {int offset; scalar_t__ vma_use_count; } ;
struct TYPE_5__ {int * data; } ;
struct TYPE_4__ {int * data; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int ISO_BUFFER_SIZE ;
 int MAX_IMAGES ;
 int MAX_ISO_BUFS ;
 int PWC_DEBUG_MEMORY (char*,...) ;
 int PWC_ERROR (char*,...) ;
 int PWC_FRAME_SIZE ;
 int default_fbufs ;
 void* kzalloc (int,int ) ;
 int pwc_dec1_alloc (struct pwc_device*) ;
 int pwc_dec23_alloc (struct pwc_device*) ;
 int pwc_mbufs ;
 void* pwc_rvmalloc (int) ;
 void* vzalloc (int ) ;

__attribute__((used)) static int pwc_allocate_buffers(struct pwc_device *pdev)
{
 int i, err;
 void *kbuf;

 PWC_DEBUG_MEMORY(">> pwc_allocate_buffers(pdev = 0x%p)\n", pdev);

 if (pdev == ((void*)0))
  return -ENXIO;


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (pdev->sbuf[i].data == ((void*)0)) {
   kbuf = kzalloc(ISO_BUFFER_SIZE, GFP_KERNEL);
   if (kbuf == ((void*)0)) {
    PWC_ERROR("Failed to allocate iso buffer %d.\n", i);
    return -ENOMEM;
   }
   PWC_DEBUG_MEMORY("Allocated iso buffer at %p.\n", kbuf);
   pdev->sbuf[i].data = kbuf;
  }
 }


 if (pdev->fbuf == ((void*)0)) {
  kbuf = kzalloc(default_fbufs * sizeof(struct pwc_frame_buf), GFP_KERNEL);
  if (kbuf == ((void*)0)) {
   PWC_ERROR("Failed to allocate frame buffer structure.\n");
   return -ENOMEM;
  }
  PWC_DEBUG_MEMORY("Allocated frame buffer structure at %p.\n", kbuf);
  pdev->fbuf = kbuf;
 }


 for (i = 0; i < default_fbufs; i++) {
  if (pdev->fbuf[i].data == ((void*)0)) {
   kbuf = vzalloc(PWC_FRAME_SIZE);
   if (kbuf == ((void*)0)) {
    PWC_ERROR("Failed to allocate frame buffer %d.\n", i);
    return -ENOMEM;
   }
   PWC_DEBUG_MEMORY("Allocated frame buffer %d at %p.\n", i, kbuf);
   pdev->fbuf[i].data = kbuf;
  }
 }


 if (DEVICE_USE_CODEC1(pdev->type))
  err = pwc_dec1_alloc(pdev);
 else
  err = pwc_dec23_alloc(pdev);

 if (err) {
  PWC_ERROR("Failed to allocate decompress table.\n");
  return err;
 }


 kbuf = pwc_rvmalloc(pwc_mbufs * pdev->len_per_image);
 if (kbuf == ((void*)0)) {
  PWC_ERROR("Failed to allocate image buffer(s). needed (%d)\n",
    pwc_mbufs * pdev->len_per_image);
  return -ENOMEM;
 }
 PWC_DEBUG_MEMORY("Allocated image buffer at %p.\n", kbuf);
 pdev->image_data = kbuf;
 for (i = 0; i < pwc_mbufs; i++) {
  pdev->images[i].offset = i * pdev->len_per_image;
  pdev->images[i].vma_use_count = 0;
 }
 for (; i < MAX_IMAGES; i++) {
  pdev->images[i].offset = 0;
 }

 kbuf = ((void*)0);

 PWC_DEBUG_MEMORY("<< pwc_allocate_buffers()\n");
 return 0;
}
