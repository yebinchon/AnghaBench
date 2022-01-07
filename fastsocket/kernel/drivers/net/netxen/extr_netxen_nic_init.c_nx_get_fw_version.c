
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct uni_data_desc {int size; int findex; } ;
struct netxen_adapter {scalar_t__ fw_type; struct firmware* fw; } ;
struct firmware {int * data; } ;
typedef int __le32 ;


 size_t NX_FW_VERSION_OFFSET ;
 scalar_t__ NX_UNIFIED_ROMIMAGE ;
 int NX_UNI_DIR_SECT_FW ;
 int NX_UNI_FIRMWARE_IDX_OFF ;
 int cpu_to_le32 (int ) ;
 struct uni_data_desc* nx_get_data_desc (struct netxen_adapter*,int ,int ) ;
 int sscanf (int const*,char*,int*,int*,int*) ;
 int strncmp (int const*,char*,int) ;

__attribute__((used)) static __le32
nx_get_fw_version(struct netxen_adapter *adapter)
{
 struct uni_data_desc *fw_data_desc;
 const struct firmware *fw = adapter->fw;
 __le32 major, minor, sub;
 const u8 *ver_str;
 int i, ret = 0;

 if (adapter->fw_type == NX_UNIFIED_ROMIMAGE) {

  fw_data_desc = nx_get_data_desc(adapter,
    NX_UNI_DIR_SECT_FW, NX_UNI_FIRMWARE_IDX_OFF);
  ver_str = fw->data + cpu_to_le32(fw_data_desc->findex) +
    cpu_to_le32(fw_data_desc->size) - 17;

  for (i = 0; i < 12; i++) {
   if (!strncmp(&ver_str[i], "REV=", 4)) {
    ret = sscanf(&ver_str[i+4], "%u.%u.%u ",
       &major, &minor, &sub);
    break;
   }
  }

  if (ret != 3)
   return 0;

  return major + (minor << 8) + (sub << 16);

 } else
  return cpu_to_le32(*(u32 *)&fw->data[NX_FW_VERSION_OFFSET]);
}
