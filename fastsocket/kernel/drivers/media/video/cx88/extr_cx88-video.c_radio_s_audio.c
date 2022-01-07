
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int radio_s_audio (struct file *file, void *fh,
     struct v4l2_audio *a)
{
 return 0;
}
