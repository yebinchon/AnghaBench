
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct soc_camera_file {int dummy; } ;



__attribute__((used)) static int mx3_camera_reqbufs(struct soc_camera_file *icf,
         struct v4l2_requestbuffers *p)
{
 return 0;
}
