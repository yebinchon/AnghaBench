
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {int prio; } ;
struct TYPE_2__ {int v4l2_id; } ;


 unsigned int BTTV_TVNORMS ;
 int EINVAL ;
 TYPE_1__* bttv_tvnorms ;
 int set_tvnorm (struct bttv*,unsigned int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 unsigned int i;
 int err;

 err = v4l2_prio_check(&btv->prio, fh->prio);
 if (err)
  goto err;

 for (i = 0; i < BTTV_TVNORMS; i++)
  if (*id & bttv_tvnorms[i].v4l2_id)
   break;
 if (i == BTTV_TVNORMS) {
  err = -EINVAL;
  goto err;
 }

 set_tvnorm(btv, i);

err:

 return err;
}
