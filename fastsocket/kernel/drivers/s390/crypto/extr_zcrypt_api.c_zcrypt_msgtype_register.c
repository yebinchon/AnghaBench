
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int list; scalar_t__ owner; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int zcrypt_ops_list ;
 int zcrypt_ops_list_lock ;

void zcrypt_msgtype_register(struct zcrypt_ops *zops)
{
 if (zops->owner) {
  spin_lock_bh(&zcrypt_ops_list_lock);
  list_add_tail(&zops->list, &zcrypt_ops_list);
  spin_unlock_bh(&zcrypt_ops_list_lock);
 }
}
