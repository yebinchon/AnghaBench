
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {scalar_t__ index; int name; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY ;
 int memset (struct v4l2_output*,int ,int) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int zoran_enum_output(struct file *file, void *__fh,
      struct v4l2_output *outp)
{
 if (outp->index != 0)
  return -EINVAL;

 memset(outp, 0, sizeof(*outp));
 outp->index = 0;
 outp->type = V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY;
 strncpy(outp->name, "Autodetect", sizeof(outp->name)-1);

 return 0;
}
