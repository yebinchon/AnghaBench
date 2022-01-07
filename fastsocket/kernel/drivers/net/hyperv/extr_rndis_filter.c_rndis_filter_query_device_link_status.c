
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rndis_device {int link_state; } ;


 int RNDIS_OID_GEN_MEDIA_CONNECT_STATUS ;
 int rndis_filter_query_device (struct rndis_device*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int rndis_filter_query_device_link_status(struct rndis_device *dev)
{
 u32 size = sizeof(u32);
 u32 link_status;
 int ret;

 ret = rndis_filter_query_device(dev,
          RNDIS_OID_GEN_MEDIA_CONNECT_STATUS,
          &link_status, &size);
 dev->link_state = (link_status != 0) ? 1 : 0;

 return ret;
}
