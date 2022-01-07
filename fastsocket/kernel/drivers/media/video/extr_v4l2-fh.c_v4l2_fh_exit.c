
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int * vdev; } ;


 int v4l2_event_free (struct v4l2_fh*) ;

void v4l2_fh_exit(struct v4l2_fh *fh)
{
 if (fh->vdev == ((void*)0))
  return;

 fh->vdev = ((void*)0);

 v4l2_event_free(fh);
}
