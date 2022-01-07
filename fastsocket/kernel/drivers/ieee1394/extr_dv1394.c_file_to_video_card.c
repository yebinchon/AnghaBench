
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {int dummy; } ;
struct file {scalar_t__ private_data; } ;



__attribute__((used)) static inline struct video_card* file_to_video_card(struct file *file)
{
 return (struct video_card*) file->private_data;
}
