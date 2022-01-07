
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk; struct file* file; } ;
struct tun_struct {int dev; TYPE_1__ socket; struct tun_file* tfile; } ;
struct tun_file {int count; struct tun_struct* tun; } ;
struct file {struct tun_file* private_data; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;
 int EINVAL ;
 int atomic_inc (int *) ;
 int dev_hold (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int sock_hold (int ) ;

__attribute__((used)) static int tun_attach(struct tun_struct *tun, struct file *file)
{
 struct tun_file *tfile = file->private_data;
 int err;

 ASSERT_RTNL();

 netif_tx_lock_bh(tun->dev);

 err = -EINVAL;
 if (tfile->tun)
  goto out;

 err = -EBUSY;
 if (tun->tfile)
  goto out;

 err = 0;
 tfile->tun = tun;
 tun->tfile = tfile;
 tun->socket.file = file;
 dev_hold(tun->dev);
 sock_hold(tun->socket.sk);
 atomic_inc(&tfile->count);

out:
 netif_tx_unlock_bh(tun->dev);
 return err;
}
