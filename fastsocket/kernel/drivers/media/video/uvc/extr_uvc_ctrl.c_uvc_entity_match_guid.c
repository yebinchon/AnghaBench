
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guidExtensionCode; } ;
struct uvc_entity {TYPE_1__ extension; } ;
typedef int __u8 ;


 int UVC_ENTITY_TYPE (struct uvc_entity const*) ;




 int memcmp (int ,int const*,int) ;
 int uvc_camera_guid ;
 int uvc_media_transport_input_guid ;
 int uvc_processing_guid ;

__attribute__((used)) static int uvc_entity_match_guid(const struct uvc_entity *entity,
 const __u8 guid[16])
{
 switch (UVC_ENTITY_TYPE(entity)) {
 case 131:
  return memcmp(uvc_camera_guid, guid, 16) == 0;

 case 130:
  return memcmp(uvc_media_transport_input_guid, guid, 16) == 0;

 case 128:
  return memcmp(uvc_processing_guid, guid, 16) == 0;

 case 129:
  return memcmp(entity->extension.guidExtensionCode,
         guid, 16) == 0;

 default:
  return 0;
 }
}
