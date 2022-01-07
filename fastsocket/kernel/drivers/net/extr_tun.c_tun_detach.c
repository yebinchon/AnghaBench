
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;


 int __tun_detach (struct tun_struct*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void tun_detach(struct tun_struct *tun)
{
 rtnl_lock();
 __tun_detach(tun);
 rtnl_unlock();
}
