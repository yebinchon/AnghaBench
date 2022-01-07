
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct islpci_acl {int policy; scalar_t__ size; int mac_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAC_POLICY_OPEN ;
 int mutex_init (int *) ;

void
prism54_acl_init(struct islpci_acl *acl)
{
 mutex_init(&acl->lock);
 INIT_LIST_HEAD(&acl->mac_list);
 acl->size = 0;
 acl->policy = MAC_POLICY_OPEN;
}
