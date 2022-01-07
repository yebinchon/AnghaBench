
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct vcontrol {TYPE_1__ qc; } ;


 int ARRAY_SIZE (struct vcontrol*) ;
 int V4L2_CID_BASE ;
 struct vcontrol* video_control ;

__attribute__((used)) static struct vcontrol *find_vctrl(int id)
{
 int i;

 if (id < V4L2_CID_BASE)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(video_control); i++)
  if (video_control[i].qc.id == id)
   return &video_control[i];

 return ((void*)0);
}
