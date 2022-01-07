
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cadet {scalar_t__ users; scalar_t__ rdsstat; int readtimer; } ;


 int del_timer_sync (int *) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int cadet_release(struct file *file)
{
 struct cadet *dev = video_drvdata(file);

 dev->users--;
 if (0 == dev->users) {
  del_timer_sync(&dev->readtimer);
  dev->rdsstat = 0;
 }
 return 0;
}
