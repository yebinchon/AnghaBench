
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {int prio; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_change (int *,int *,int) ;

__attribute__((used)) static int bttv_s_priority(struct file *file, void *f,
     enum v4l2_priority prio)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;
 int rc;

 rc = v4l2_prio_change(&btv->prio, &fh->prio, prio);

 return rc;
}
