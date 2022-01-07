
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_fh {struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int v4l2_dev; } ;
struct videobuf_queue {struct vpfe_fh* priv_data; } ;
struct TYPE_2__ {unsigned int device_bufsize; unsigned int min_numbuffers; } ;


 TYPE_1__ config_params ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,...) ;

__attribute__((used)) static int vpfe_videobuf_setup(struct videobuf_queue *vq,
    unsigned int *count,
    unsigned int *size)
{
 struct vpfe_fh *fh = vq->priv_data;
 struct vpfe_device *vpfe_dev = fh->vpfe_dev;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buffer_setup\n");
 *size = config_params.device_bufsize;

 if (*count < config_params.min_numbuffers)
  *count = config_params.min_numbuffers;
 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev,
  "count=%d, size=%d\n", *count, *size);
 return 0;
}
