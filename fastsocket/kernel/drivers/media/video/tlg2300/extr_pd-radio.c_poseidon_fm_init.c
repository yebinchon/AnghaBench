
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_2__ {struct video_device* fm_dev; } ;
struct poseidon {TYPE_1__ radio_data; } ;


 int VFL_TYPE_RADIO ;
 int poseidon_fm_template ;
 struct video_device* vdev_init (struct poseidon*,int *) ;
 int video_device_release (struct video_device*) ;
 scalar_t__ video_register_device (struct video_device*,int ,int) ;

int poseidon_fm_init(struct poseidon *p)
{
 struct video_device *fm_dev;

 fm_dev = vdev_init(p, &poseidon_fm_template);
 if (fm_dev == ((void*)0))
  return -1;

 if (video_register_device(fm_dev, VFL_TYPE_RADIO, -1) < 0) {
  video_device_release(fm_dev);
  return -1;
 }
 p->radio_data.fm_dev = fm_dev;
 return 0;
}
