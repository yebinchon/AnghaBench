
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int prio; } ;
struct file {int dummy; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_max (int *) ;

__attribute__((used)) static int ivtv_g_priority(struct file *file, void *fh, enum v4l2_priority *p)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 *p = v4l2_prio_max(&itv->prio);

 return 0;
}
