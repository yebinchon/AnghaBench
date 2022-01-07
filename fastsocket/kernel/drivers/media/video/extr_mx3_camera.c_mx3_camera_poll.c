
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_file {int vb_vidq; } ;
struct file {struct soc_camera_file* private_data; } ;
typedef int poll_table ;


 unsigned int videobuf_poll_stream (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int mx3_camera_poll(struct file *file, poll_table *pt)
{
 struct soc_camera_file *icf = file->private_data;

 return videobuf_poll_stream(file, &icf->vb_vidq, pt);
}
