
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cx8802_fh* private_data; } ;
struct cx8802_fh {int mpegq; struct cx8802_dev* dev; } ;
struct cx8802_dev {int mpeg_active; } ;


 int blackbird_start_codec (struct file*,struct cx8802_fh*) ;
 unsigned int videobuf_poll_stream (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int
mpeg_poll(struct file *file, struct poll_table_struct *wait)
{
 struct cx8802_fh *fh = file->private_data;
 struct cx8802_dev *dev = fh->dev;

 if (!dev->mpeg_active)
  blackbird_start_codec(file, fh);

 return videobuf_poll_stream(file, &fh->mpegq, wait);
}
