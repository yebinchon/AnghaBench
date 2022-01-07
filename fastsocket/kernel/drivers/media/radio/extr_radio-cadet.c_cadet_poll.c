
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct cadet {scalar_t__ rdsin; scalar_t__ rdsout; int read_queue; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static unsigned int cadet_poll(struct file *file, struct poll_table_struct *wait)
{
 struct cadet *dev = video_drvdata(file);

 poll_wait(file, &dev->read_queue, wait);
 if (dev->rdsin != dev->rdsout)
  return POLLIN | POLLRDNORM;
 return 0;
}
