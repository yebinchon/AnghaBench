
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_dump_template_hdr {int version; int size; } ;
struct TYPE_2__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLC_83XX_MINIDUMP_FLASH ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_lockless_flash_read32 (struct qlcnic_adapter*,int ,int *,int) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_fw_flash_get_minidump_temp_size(struct qlcnic_adapter *adapter,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_dump_template_hdr tmp_hdr;
 u32 size = sizeof(struct qlcnic_dump_template_hdr) / sizeof(u32);
 int ret = 0;

 if (qlcnic_82xx_check(adapter))
  return -EIO;

 if (qlcnic_83xx_lock_flash(adapter))
  return -EIO;

 ret = qlcnic_83xx_lockless_flash_read32(adapter,
      QLC_83XX_MINIDUMP_FLASH,
      (u8 *)&tmp_hdr, size);

 qlcnic_83xx_unlock_flash(adapter);

 cmd->rsp.arg[2] = tmp_hdr.size;
 cmd->rsp.arg[3] = tmp_hdr.version;

 return ret;
}
