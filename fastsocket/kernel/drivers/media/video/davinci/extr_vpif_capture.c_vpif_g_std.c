
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int stdid; } ;
struct channel_obj {TYPE_1__ video; } ;


 int debug ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;

 vpif_dbg(2, debug, "vpif_g_std\n");

 *std = ch->video.stdid;
 return 0;
}
