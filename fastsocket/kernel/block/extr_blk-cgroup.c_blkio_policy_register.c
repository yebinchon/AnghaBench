
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_policy_type {int list; } ;


 int blkio_list ;
 int blkio_list_lock ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void blkio_policy_register(struct blkio_policy_type *blkiop)
{
 spin_lock(&blkio_list_lock);
 list_add_tail(&blkiop->list, &blkio_list);
 spin_unlock(&blkio_list_lock);
}
