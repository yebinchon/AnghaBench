
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct tun_struct {TYPE_1__ socket; struct tun_file* tfile; } ;
struct tun_file {int count; } ;
struct net_device {int dummy; } ;


 int __tun_detach (struct tun_struct*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void tun_net_uninit(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);
 struct tun_file *tfile = tun->tfile;



 if (tfile) {
  wake_up_all(&tun->socket.wait);
  if (atomic_dec_and_test(&tfile->count))
   __tun_detach(tun);
 }
}
