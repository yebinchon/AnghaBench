
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_50hz; int height; int width; } ;
struct cx8802_dev {TYPE_2__ params; TYPE_1__* core; int height; int width; } ;
struct TYPE_3__ {int tvnorm; } ;


 int CX2341X_ENC_SET_FRAME_SIZE ;
 int V4L2_STD_625_50 ;
 int blackbird_api_cmd (struct cx8802_dev*,int ,int,int ,int ,int ) ;
 int blackbird_mbox_func ;
 int cx2341x_update (struct cx8802_dev*,int ,int *,TYPE_2__*) ;

__attribute__((used)) static void blackbird_codec_settings(struct cx8802_dev *dev)
{

 blackbird_api_cmd(dev, CX2341X_ENC_SET_FRAME_SIZE, 2, 0,
    dev->height, dev->width);

 dev->params.width = dev->width;
 dev->params.height = dev->height;
 dev->params.is_50hz = (dev->core->tvnorm & V4L2_STD_625_50) != 0;

 cx2341x_update(dev, blackbird_mbox_func, ((void*)0), &dev->params);
}
