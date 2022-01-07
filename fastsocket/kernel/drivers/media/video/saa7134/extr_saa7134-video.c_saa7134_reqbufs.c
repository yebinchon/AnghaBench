
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct saa7134_fh {int dummy; } ;
struct file {int dummy; } ;


 int saa7134_queue (struct saa7134_fh*) ;
 int videobuf_reqbufs (int ,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int saa7134_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *p)
{
 struct saa7134_fh *fh = priv;
 return videobuf_reqbufs(saa7134_queue(fh), p);
}
