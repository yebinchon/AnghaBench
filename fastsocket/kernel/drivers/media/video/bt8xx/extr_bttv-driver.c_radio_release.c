
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa6588_command {int dummy; } ;
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {int radio_user; int prio; } ;


 int SAA6588_CMD_CLOSE ;
 int bttv_call_all (struct bttv*,int ,int ,int ,struct saa6588_command*) ;
 int core ;
 int ioctl ;
 int kfree (struct bttv_fh*) ;
 int v4l2_prio_close (int *,int ) ;

__attribute__((used)) static int radio_release(struct file *file)
{
 struct bttv_fh *fh = file->private_data;
 struct bttv *btv = fh->btv;
 struct saa6588_command cmd;

 v4l2_prio_close(&btv->prio, fh->prio);
 file->private_data = ((void*)0);
 kfree(fh);

 btv->radio_user--;

 bttv_call_all(btv, core, ioctl, SAA6588_CMD_CLOSE, &cmd);

 return 0;
}
