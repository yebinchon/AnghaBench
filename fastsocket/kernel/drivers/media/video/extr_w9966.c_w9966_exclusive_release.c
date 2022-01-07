
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int in_use; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 struct w9966_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int w9966_exclusive_release(struct file *file)
{
 struct w9966_dev *cam = video_drvdata(file);

 clear_bit(0, &cam->in_use);
 return 0;
}
