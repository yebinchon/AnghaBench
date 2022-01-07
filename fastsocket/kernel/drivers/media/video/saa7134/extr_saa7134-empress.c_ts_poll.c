
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int empress_tsq; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 unsigned int videobuf_poll_stream (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int
ts_poll(struct file *file, struct poll_table_struct *wait)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_poll_stream(file, &dev->empress_tsq, wait);
}
