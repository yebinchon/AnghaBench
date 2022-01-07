
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_object* elements; } ;
union acpi_object {TYPE_1__ package; } ;
struct atk_data {int old_interface; } ;
typedef enum atk_pack_member { ____Placeholder_atk_pack_member } atk_pack_member ;







 int _HWMON_NEW_PACK_ENABLE ;
 int _HWMON_NEW_PACK_FLAGS ;
 int _HWMON_NEW_PACK_LIMIT1 ;
 int _HWMON_NEW_PACK_LIMIT2 ;
 int _HWMON_NEW_PACK_NAME ;
 int _HWMON_OLD_PACK_ENABLE ;
 int _HWMON_OLD_PACK_FLAGS ;
 int _HWMON_OLD_PACK_LIMIT1 ;
 int _HWMON_OLD_PACK_LIMIT2 ;
 int _HWMON_OLD_PACK_NAME ;

__attribute__((used)) static union acpi_object *atk_get_pack_member(struct atk_data *data,
      union acpi_object *pack,
      enum atk_pack_member m)
{
 bool old_if = data->old_interface;
 int offset;

 switch (m) {
 case 131:
  offset = old_if ? _HWMON_OLD_PACK_FLAGS : _HWMON_NEW_PACK_FLAGS;
  break;
 case 128:
  offset = old_if ? _HWMON_OLD_PACK_NAME : _HWMON_NEW_PACK_NAME;
  break;
 case 130:
  offset = old_if ? _HWMON_OLD_PACK_LIMIT1 :
      _HWMON_NEW_PACK_LIMIT1;
  break;
 case 129:
  offset = old_if ? _HWMON_OLD_PACK_LIMIT2 :
      _HWMON_NEW_PACK_LIMIT2;
  break;
 case 132:
  offset = old_if ? _HWMON_OLD_PACK_ENABLE :
      _HWMON_NEW_PACK_ENABLE;
  break;
 default:
  return ((void*)0);
 }

 return &pack->package.elements[offset];
}
