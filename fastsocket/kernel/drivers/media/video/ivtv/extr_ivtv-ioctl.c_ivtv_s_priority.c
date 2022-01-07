
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_open_id {int prio; struct ivtv* itv; } ;
struct ivtv {int prio; } ;
struct file {int dummy; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_change (int *,int *,int) ;

__attribute__((used)) static int ivtv_s_priority(struct file *file, void *fh, enum v4l2_priority prio)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;

 return v4l2_prio_change(&itv->prio, &id->prio, prio);
}
