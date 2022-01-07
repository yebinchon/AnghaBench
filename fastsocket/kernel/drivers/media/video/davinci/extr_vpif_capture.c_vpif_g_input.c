
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct video_obj {unsigned int input_idx; } ;
struct file {int dummy; } ;
struct channel_obj {struct video_obj video; } ;



__attribute__((used)) static int vpif_g_input(struct file *file, void *priv, unsigned int *index)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct video_obj *vid_ch = &ch->video;

 *index = vid_ch->input_idx;

 return 0;
}
