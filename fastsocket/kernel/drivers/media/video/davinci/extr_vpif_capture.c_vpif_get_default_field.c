
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_interface {scalar_t__ if_type; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 scalar_t__ VPIF_IF_RAW_BAYER ;

__attribute__((used)) static inline enum v4l2_field vpif_get_default_field(
    struct vpif_interface *iface)
{
 return (iface->if_type == VPIF_IF_RAW_BAYER) ? V4L2_FIELD_NONE :
      V4L2_FIELD_INTERLACED;
}
