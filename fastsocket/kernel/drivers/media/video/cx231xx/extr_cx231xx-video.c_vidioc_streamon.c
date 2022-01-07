
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx231xx_fh {int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int call_all (struct cx231xx*,int ,int ,int) ;
 int check_dev (struct cx231xx*) ;
 scalar_t__ likely (int) ;
 int res_get (struct cx231xx_fh*) ;
 int s_stream ;
 int video ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
      enum v4l2_buf_type type)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 rc = res_get(fh);

 if (likely(rc >= 0))
  rc = videobuf_streamon(&fh->vb_vidq);

 call_all(dev, video, s_stream, 1);

 return rc;
}
