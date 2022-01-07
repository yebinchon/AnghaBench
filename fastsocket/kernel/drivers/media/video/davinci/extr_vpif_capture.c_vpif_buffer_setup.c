
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct videobuf_queue {struct vpif_fh* priv_data; } ;
struct common_obj {scalar_t__ memory; } ;
struct channel_obj {size_t channel_id; struct common_obj* common; } ;
struct TYPE_2__ {unsigned int* channel_bufsize; unsigned int min_numbuffers; } ;


 scalar_t__ V4L2_MEMORY_MMAP ;
 size_t VPIF_VIDEO_INDEX ;
 TYPE_1__ config_params ;
 int debug ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_buffer_setup(struct videobuf_queue *q, unsigned int *count,
        unsigned int *size)
{

 struct vpif_fh *fh = q->priv_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;

 common = &ch->common[VPIF_VIDEO_INDEX];

 vpif_dbg(2, debug, "vpif_buffer_setup\n");


 if (V4L2_MEMORY_MMAP != common->memory)
  return 0;


 *size = config_params.channel_bufsize[ch->channel_id];

 if (*count < config_params.min_numbuffers)
  *count = config_params.min_numbuffers;
 return 0;
}
