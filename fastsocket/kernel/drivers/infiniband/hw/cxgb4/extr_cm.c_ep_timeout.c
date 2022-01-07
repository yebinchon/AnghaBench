
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ep {int entry; } ;


 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int skb_work ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout_list ;
 int timeout_lock ;
 int workq ;

__attribute__((used)) static void ep_timeout(unsigned long arg)
{
 struct c4iw_ep *ep = (struct c4iw_ep *)arg;

 spin_lock(&timeout_lock);
 list_add_tail(&ep->entry, &timeout_list);
 spin_unlock(&timeout_lock);
 queue_work(workq, &skb_work);
}
