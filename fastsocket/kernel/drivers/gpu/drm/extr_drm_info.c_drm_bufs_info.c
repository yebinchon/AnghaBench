
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device_dma {int buf_count; TYPE_4__** buflist; TYPE_3__* bufs; } ;
struct drm_device {int struct_mutex; struct drm_device_dma* dma; } ;
struct TYPE_8__ {int list; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_7__ {int seg_count; int page_order; TYPE_2__ freelist; scalar_t__ buf_count; int buf_size; } ;
struct TYPE_5__ {struct drm_device* dev; } ;


 int DRM_MAX_ORDER ;
 int PAGE_SIZE ;
 int atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,...) ;

int drm_bufs_info(struct seq_file *m, void *data)
{
 struct drm_info_node *node = (struct drm_info_node *) m->private;
 struct drm_device *dev = node->minor->dev;
 struct drm_device_dma *dma;
 int i, seg_pages;

 mutex_lock(&dev->struct_mutex);
 dma = dev->dma;
 if (!dma) {
  mutex_unlock(&dev->struct_mutex);
  return 0;
 }

 seq_printf(m, " o     size count  free	 segs pages    kB\n\n");
 for (i = 0; i <= DRM_MAX_ORDER; i++) {
  if (dma->bufs[i].buf_count) {
   seg_pages = dma->bufs[i].seg_count * (1 << dma->bufs[i].page_order);
   seq_printf(m, "%2d %8d %5d %5d %5d %5d %5ld\n",
       i,
       dma->bufs[i].buf_size,
       dma->bufs[i].buf_count,
       atomic_read(&dma->bufs[i].freelist.count),
       dma->bufs[i].seg_count,
       seg_pages,
       seg_pages * PAGE_SIZE / 1024);
  }
 }
 seq_printf(m, "\n");
 for (i = 0; i < dma->buf_count; i++) {
  if (i && !(i % 32))
   seq_printf(m, "\n");
  seq_printf(m, " %d", dma->buflist[i]->list);
 }
 seq_printf(m, "\n");
 mutex_unlock(&dev->struct_mutex);
 return 0;
}
