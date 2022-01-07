
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int res_free (struct saa7134_dev*,struct saa7134_fh*,int) ;
 int saa7134_queue (struct saa7134_fh*) ;
 int saa7134_resource (struct saa7134_fh*) ;
 int videobuf_streamoff (int ) ;

__attribute__((used)) static int saa7134_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 int err;
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;
 int res = saa7134_resource(fh);

 err = videobuf_streamoff(saa7134_queue(fh));
 if (err < 0)
  return err;
 res_free(dev, fh, res);
 return 0;
}
