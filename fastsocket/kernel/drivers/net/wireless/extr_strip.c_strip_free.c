
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip {int dev; scalar_t__ magic; int list; } ;


 int free_netdev (int ) ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strip_lock ;

__attribute__((used)) static void strip_free(struct strip *strip_info)
{
 spin_lock_bh(&strip_lock);
 list_del_rcu(&strip_info->list);
 spin_unlock_bh(&strip_lock);

 strip_info->magic = 0;

 free_netdev(strip_info->dev);
}
