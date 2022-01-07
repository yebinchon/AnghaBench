
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * mac_addr; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;


 int ETH_ALEN ;
 int memcpy (int*,int *,int ) ;

void ocrdma_get_guid(struct ocrdma_dev *dev, u8 *guid)
{
 u8 mac_addr[6];

 memcpy(&mac_addr[0], &dev->nic_info.mac_addr[0], ETH_ALEN);
 guid[0] = mac_addr[0] ^ 2;
 guid[1] = mac_addr[1];
 guid[2] = mac_addr[2];
 guid[3] = 0xff;
 guid[4] = 0xfe;
 guid[5] = mac_addr[3];
 guid[6] = mac_addr[4];
 guid[7] = mac_addr[5];
}
