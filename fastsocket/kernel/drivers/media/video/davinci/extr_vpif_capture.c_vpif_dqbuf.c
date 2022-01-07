
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct common_obj {int buffer_queue; } ;
struct channel_obj {struct common_obj* common; } ;


 int O_NONBLOCK ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 vpif_dbg(2, debug, "vpif_dqbuf\n");

 return videobuf_dqbuf(&common->buffer_queue, buf,
     file->f_flags & O_NONBLOCK);
}
