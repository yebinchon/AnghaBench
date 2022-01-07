
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rndis_device {int hw_mac_adr; } ;


 int ETH_ALEN ;
 int RNDIS_OID_802_3_PERMANENT_ADDRESS ;
 int rndis_filter_query_device (struct rndis_device*,int ,int ,int *) ;

__attribute__((used)) static int rndis_filter_query_device_mac(struct rndis_device *dev)
{
 u32 size = ETH_ALEN;

 return rndis_filter_query_device(dev,
          RNDIS_OID_802_3_PERMANENT_ADDRESS,
          dev->hw_mac_adr, &size);
}
