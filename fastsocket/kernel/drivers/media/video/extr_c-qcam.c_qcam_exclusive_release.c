
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct qcam_device {int in_use; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int qcam_exclusive_release(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct qcam_device *qcam = (struct qcam_device *)dev;

 clear_bit(0, &qcam->in_use);
 return 0;
}
