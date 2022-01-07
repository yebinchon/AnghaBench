
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {struct ip_mc_list* mc_list; } ;


 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int ip_mc_rejoin_group (struct ip_mc_list*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void __bond_resend_igmp_join_requests(struct net_device *dev)
{
 struct in_device *in_dev;
 struct ip_mc_list *im;

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);
 if (in_dev) {
  for (im = in_dev->mc_list; im; im = im->next)
   ip_mc_rejoin_group(im);
 }

 rcu_read_unlock();
}
