
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pixelformat; int sizeimage; int field; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct TYPE_7__ {int type; TYPE_2__ fmt; } ;
struct common_obj {TYPE_3__ fmt; int memory; } ;
struct channel_obj {size_t channel_id; struct common_obj* common; } ;
struct TYPE_8__ {scalar_t__* numbuffers; int * channel_bufsize; } ;


 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_FIELD_ANY ;
 int V4L2_MEMORY_MMAP ;
 int V4L2_MEMORY_USERPTR ;
 int V4L2_PIX_FMT_YUV422P ;
 size_t VPIF_VIDEO_INDEX ;
 TYPE_4__ config_params ;

__attribute__((used)) static void vpif_config_format(struct channel_obj *ch)
{
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 common->fmt.fmt.pix.field = V4L2_FIELD_ANY;
 if (config_params.numbuffers[ch->channel_id] == 0)
  common->memory = V4L2_MEMORY_USERPTR;
 else
  common->memory = V4L2_MEMORY_MMAP;

 common->fmt.fmt.pix.sizeimage =
   config_params.channel_bufsize[ch->channel_id];
 common->fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUV422P;
 common->fmt.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
}
