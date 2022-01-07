
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int * v_dev; } ;
struct vbi_data {int * v_dev; } ;
struct poseidon {struct vbi_data vbi_data; struct video_data video_data; } ;


 int ENOMEM ;
 int VFL_TYPE_GRABBER ;
 int VFL_TYPE_VBI ;
 int log (char*,...) ;
 int pd_video_exit (struct poseidon*) ;
 int pd_video_template ;
 void* vdev_init (struct poseidon*,int *) ;
 int video_register_device (int *,int ,int) ;

int pd_video_init(struct poseidon *pd)
{
 struct video_data *video = &pd->video_data;
 struct vbi_data *vbi = &pd->vbi_data;
 int ret = -ENOMEM;

 video->v_dev = vdev_init(pd, &pd_video_template);
 if (video->v_dev == ((void*)0))
  goto out;

 ret = video_register_device(video->v_dev, VFL_TYPE_GRABBER, -1);
 if (ret != 0)
  goto out;


 vbi->v_dev = vdev_init(pd, &pd_video_template);
 if (vbi->v_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }
 ret = video_register_device(vbi->v_dev, VFL_TYPE_VBI, -1);
 if (ret != 0)
  goto out;
 log("register VIDEO/VBI devices");
 return 0;
out:
 log("VIDEO/VBI devices register failed, : %d", ret);
 pd_video_exit(pd);
 return ret;
}
