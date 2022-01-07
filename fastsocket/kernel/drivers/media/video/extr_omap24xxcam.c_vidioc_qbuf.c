
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct omap24xxcam_fh {int vbq; } ;
struct file {int dummy; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct omap24xxcam_fh *ofh = fh;

 return videobuf_qbuf(&ofh->vbq, b);
}
