
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct hv_vmbus_device_id {int guid; } ;
typedef int __u8 ;


 int is_null_guid (int ) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static const struct hv_vmbus_device_id *hv_vmbus_get_id(
     const struct hv_vmbus_device_id *id,
     __u8 *guid)
{
 for (; !is_null_guid(id->guid); id++)
  if (!memcmp(&id->guid, guid, sizeof(uuid_le)))
   return id;

 return ((void*)0);
}
