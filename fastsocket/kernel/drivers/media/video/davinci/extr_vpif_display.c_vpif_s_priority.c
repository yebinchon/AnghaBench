
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {int prio; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct channel_obj {int prio; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_change (int *,int *,int) ;

__attribute__((used)) static int vpif_s_priority(struct file *file, void *priv, enum v4l2_priority p)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;

 return v4l2_prio_change(&ch->prio, &fh->prio, p);
}
