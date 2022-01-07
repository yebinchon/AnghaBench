
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wcid_entry ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct mac_wcid_entry {int mac; } ;


 int MAC_WCID_ENTRY (int) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 int rt2800_register_multiread (struct rt2x00_dev*,int ,struct mac_wcid_entry*,int) ;

__attribute__((used)) static inline int rt2800_find_wcid(struct rt2x00_dev *rt2x00dev)
{
 struct mac_wcid_entry wcid_entry;
 int idx;
 u32 offset;
 for (idx = 33; idx <= 222; idx++) {
  offset = MAC_WCID_ENTRY(idx);
  rt2800_register_multiread(rt2x00dev, offset, &wcid_entry,
       sizeof(wcid_entry));
  if (is_broadcast_ether_addr(wcid_entry.mac))
   return idx;
 }





 return -1;
}
