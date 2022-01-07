
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int v_dev; } ;
struct vbi_data {int v_dev; } ;
struct poseidon {struct vbi_data vbi_data; struct video_data video_data; } ;


 int destroy_video_device (int *) ;
 int log () ;

void pd_video_exit(struct poseidon *pd)
{
 struct video_data *video = &pd->video_data;
 struct vbi_data *vbi = &pd->vbi_data;

 destroy_video_device(&video->v_dev);
 destroy_video_device(&vbi->v_dev);
 log();
}
