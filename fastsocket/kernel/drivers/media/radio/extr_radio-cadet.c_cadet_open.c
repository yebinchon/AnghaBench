
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cadet {int users; int read_queue; } ;


 int init_waitqueue_head (int *) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int cadet_open(struct file *file)
{
 struct cadet *dev = video_drvdata(file);

 dev->users++;
 if (1 == dev->users)
  init_waitqueue_head(&dev->read_queue);
 return 0;
}
