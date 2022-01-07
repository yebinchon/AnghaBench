
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int vidq; } ;


 unsigned int videobuf_poll_stream (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int mpeg_poll(struct file *file,
 struct poll_table_struct *wait)
{
 struct cx231xx_fh *fh = file->private_data;




 return videobuf_poll_stream(file, &fh->vidq, wait);
}
