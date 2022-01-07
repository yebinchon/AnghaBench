
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int bt819_status (struct v4l2_subdev*,int *,int *) ;

__attribute__((used)) static int bt819_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 return bt819_status(sd, ((void*)0), std);
}
