
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {int dummy; } ;
struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int video_lock; TYPE_1__ dev; } ;
struct pxa_camera_dev {int lock; } ;
struct pxa_buffer {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int pxa_videobuf_ops ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int videobuf_queue_sg_init (struct videobuf_queue*,int *,int *,int *,int ,int ,int,struct soc_camera_device*,int *) ;

__attribute__((used)) static void pxa_camera_init_videobuf(struct videobuf_queue *q,
         struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct pxa_camera_dev *pcdev = ici->priv;





 videobuf_queue_sg_init(q, &pxa_videobuf_ops, ((void*)0), &pcdev->lock,
    V4L2_BUF_TYPE_VIDEO_CAPTURE, V4L2_FIELD_NONE,
    sizeof(struct pxa_buffer), icd, &icd->video_lock);
}
