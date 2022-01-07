
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {int dummy; } ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {scalar_t__ is_interlaced; int lock; } ;
struct sh_mobile_ceu_buffer {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int sh_mobile_ceu_videobuf_ops ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int videobuf_queue_dma_contig_init (struct videobuf_queue*,int *,int ,int *,int ,int ,int,struct soc_camera_device*) ;

__attribute__((used)) static void sh_mobile_ceu_init_videobuf(struct videobuf_queue *q,
     struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;

 videobuf_queue_dma_contig_init(q,
           &sh_mobile_ceu_videobuf_ops,
           icd->dev.parent, &pcdev->lock,
           V4L2_BUF_TYPE_VIDEO_CAPTURE,
           pcdev->is_interlaced ?
           V4L2_FIELD_INTERLACED : V4L2_FIELD_NONE,
           sizeof(struct sh_mobile_ceu_buffer),
           icd);
}
