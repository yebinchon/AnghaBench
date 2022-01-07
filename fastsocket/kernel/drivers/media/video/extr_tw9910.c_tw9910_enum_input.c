
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int name; int std; int type; } ;
struct soc_camera_device {int dummy; } ;


 int V4L2_INPUT_TYPE_TUNER ;
 int V4L2_STD_UNKNOWN ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int tw9910_enum_input(struct soc_camera_device *icd,
        struct v4l2_input *inp)
{
 inp->type = V4L2_INPUT_TYPE_TUNER;
 inp->std = V4L2_STD_UNKNOWN;
 strcpy(inp->name, "Video");

 return 0;
}
