
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wcid_entry ;
typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct mac_wcid_entry {int mac; } ;


 int ETH_ALEN ;
 int MAC_WCID_ENTRY (int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct mac_wcid_entry*,int,int) ;
 int rt2800_register_multiwrite (struct rt2x00_dev*,int ,struct mac_wcid_entry*,int) ;

__attribute__((used)) static void rt2800_config_wcid(struct rt2x00_dev *rt2x00dev,
          const u8 *address,
          int wcid)
{
 struct mac_wcid_entry wcid_entry;
 u32 offset;

 offset = MAC_WCID_ENTRY(wcid);

 memset(&wcid_entry, 0xff, sizeof(wcid_entry));
 if (address)
  memcpy(wcid_entry.mac, address, ETH_ALEN);

 rt2800_register_multiwrite(rt2x00dev, offset,
          &wcid_entry, sizeof(wcid_entry));
}
