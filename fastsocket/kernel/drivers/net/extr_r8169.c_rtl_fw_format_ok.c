
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl_fw {char* version; struct rtl_fw_phy_action phy_action; struct firmware* fw; } ;
struct rtl8169_private {int dummy; } ;
struct fw_info {int version; int fw_len; int fw_start; int magic; } ;
struct firmware {scalar_t__* data; size_t size; } ;
typedef int __le32 ;


 size_t FW_OPCODE_SIZE ;
 int RTL_VER_SIZE ;
 size_t le32_to_cpu (int ) ;
 int memcpy (char*,int ,int) ;
 int rtl_lookup_firmware_name (struct rtl8169_private*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static bool rtl_fw_format_ok(struct rtl8169_private *tp, struct rtl_fw *rtl_fw)
{
 const struct firmware *fw = rtl_fw->fw;
 struct fw_info *fw_info = (struct fw_info *)fw->data;
 struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;
 char *version = rtl_fw->version;
 bool rc = 0;

 if (fw->size < FW_OPCODE_SIZE)
  goto out;

 if (!fw_info->magic) {
  size_t i, size, start;
  u8 checksum = 0;

  if (fw->size < sizeof(*fw_info))
   goto out;

  for (i = 0; i < fw->size; i++)
   checksum += fw->data[i];
  if (checksum != 0)
   goto out;

  start = le32_to_cpu(fw_info->fw_start);
  if (start > fw->size)
   goto out;

  size = le32_to_cpu(fw_info->fw_len);
  if (size > (fw->size - start) / FW_OPCODE_SIZE)
   goto out;

  memcpy(version, fw_info->version, RTL_VER_SIZE);

  pa->code = (__le32 *)(fw->data + start);
  pa->size = size;
 } else {
  if (fw->size % FW_OPCODE_SIZE)
   goto out;

  strlcpy(version, rtl_lookup_firmware_name(tp), RTL_VER_SIZE);

  pa->code = (__le32 *)fw->data;
  pa->size = fw->size / FW_OPCODE_SIZE;
 }
 version[RTL_VER_SIZE - 1] = 0;

 rc = 1;
out:
 return rc;
}
