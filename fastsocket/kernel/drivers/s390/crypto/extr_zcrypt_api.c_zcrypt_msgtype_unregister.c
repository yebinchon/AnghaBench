
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int list; } ;


 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int zcrypt_ops_list_lock ;

void zcrypt_msgtype_unregister(struct zcrypt_ops *zops)
{
 spin_lock_bh(&zcrypt_ops_list_lock);
 list_del_init(&zops->list);
 spin_unlock_bh(&zcrypt_ops_list_lock);
}
