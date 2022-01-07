
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct TYPE_3__ {size_t type; } ;
struct bttv {int tvnorm; TYPE_1__ c; int prio; } ;
struct TYPE_4__ {unsigned int video_inputs; } ;


 int EINVAL ;
 TYPE_2__* bttv_tvcards ;
 int set_input (struct bttv*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_input(struct file *file, void *priv, unsigned int i)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 int err;

 err = v4l2_prio_check(&btv->prio, fh->prio);
 if (unlikely(err))
  goto err;

 if (i > bttv_tvcards[btv->c.type].video_inputs) {
  err = -EINVAL;
  goto err;
 }

 set_input(btv, i, btv->tvnorm);

err:
 return 0;
}
