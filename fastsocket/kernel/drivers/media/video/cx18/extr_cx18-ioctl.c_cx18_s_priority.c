
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx18_open_id {int prio; struct cx18* cx; } ;
struct cx18 {int prio; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_change (int *,int *,int) ;

__attribute__((used)) static int cx18_s_priority(struct file *file, void *fh, enum v4l2_priority prio)
{
 struct cx18_open_id *id = fh;
 struct cx18 *cx = id->cx;

 return v4l2_prio_change(&cx->prio, &id->prio, prio);
}
