
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct front_face {int q; } ;
struct file {struct front_face* private_data; } ;
typedef int poll_table ;


 unsigned int videobuf_poll_stream (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int pd_video_poll(struct file *file, poll_table *table)
{
 struct front_face *front = file->private_data;
 return videobuf_poll_stream(file, &front->q, table);
}
