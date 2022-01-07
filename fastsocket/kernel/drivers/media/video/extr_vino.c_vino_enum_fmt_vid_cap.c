
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int description; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t description; int pixelformat; } ;


 int EINVAL ;
 size_t VINO_DATA_FMT_COUNT ;
 int dprintk (char*,size_t) ;
 int strcpy (int ,size_t) ;
 TYPE_1__* vino_data_formats ;

__attribute__((used)) static int vino_enum_fmt_vid_cap(struct file *file, void *__fh,
         struct v4l2_fmtdesc *fd)
{
 dprintk("format index = %d\n", fd->index);

 if (fd->index >= VINO_DATA_FMT_COUNT)
  return -EINVAL;
 dprintk("format name = %s\n", vino_data_formats[fd->index].description);

 fd->pixelformat = vino_data_formats[fd->index].pixelformat;
 strcpy(fd->description, vino_data_formats[fd->index].description);
 return 0;
}
