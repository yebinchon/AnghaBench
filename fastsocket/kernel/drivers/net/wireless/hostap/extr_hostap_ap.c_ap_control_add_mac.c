
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_restrictions {int lock; int entries; int mac_list; } ;
struct mac_entry {int list; int addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 struct mac_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ap_control_add_mac(struct mac_restrictions *mac_restrictions, u8 *mac)
{
 struct mac_entry *entry;

 entry = kmalloc(sizeof(struct mac_entry), GFP_KERNEL);
 if (entry == ((void*)0))
  return -ENOMEM;

 memcpy(entry->addr, mac, ETH_ALEN);

 spin_lock_bh(&mac_restrictions->lock);
 list_add_tail(&entry->list, &mac_restrictions->mac_list);
 mac_restrictions->entries++;
 spin_unlock_bh(&mac_restrictions->lock);

 return 0;
}
