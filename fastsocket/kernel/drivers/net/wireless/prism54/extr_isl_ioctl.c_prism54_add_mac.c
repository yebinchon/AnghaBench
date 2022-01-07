
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct mac_entry {int _list; int addr; } ;
struct iw_request_info {int dummy; } ;
struct islpci_acl {int lock; int size; int mac_list; } ;
struct TYPE_3__ {struct islpci_acl acl; } ;
typedef TYPE_1__ islpci_private ;


 scalar_t__ ARPHRD_ETHER ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ERESTARTSYS ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (struct mac_entry*) ;
 struct mac_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_add_mac(struct net_device *ndev, struct iw_request_info *info,
  struct sockaddr *awrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct islpci_acl *acl = &priv->acl;
 struct mac_entry *entry;
 struct sockaddr *addr = (struct sockaddr *) extra;

 if (addr->sa_family != ARPHRD_ETHER)
  return -EOPNOTSUPP;

 entry = kmalloc(sizeof (struct mac_entry), GFP_KERNEL);
 if (entry == ((void*)0))
  return -ENOMEM;

 memcpy(entry->addr, addr->sa_data, ETH_ALEN);

 if (mutex_lock_interruptible(&acl->lock)) {
  kfree(entry);
  return -ERESTARTSYS;
 }
 list_add_tail(&entry->_list, &acl->mac_list);
 acl->size++;
 mutex_unlock(&acl->lock);

 return 0;
}
