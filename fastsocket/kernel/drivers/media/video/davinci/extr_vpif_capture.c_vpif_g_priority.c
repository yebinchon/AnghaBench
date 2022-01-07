
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct channel_obj {int prio; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_max (int *) ;

__attribute__((used)) static int vpif_g_priority(struct file *file, void *priv,
      enum v4l2_priority *prio)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;

 *prio = v4l2_prio_max(&ch->prio);

 return 0;
}
