
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct uni_data_desc {int size; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* fw; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ fw_type; } ;
struct TYPE_3__ {int * data; } ;


 size_t QLCNIC_FW_SIZE_OFFSET ;
 scalar_t__ QLCNIC_UNIFIED_ROMIMAGE ;
 int QLCNIC_UNI_DIR_SECT_FW ;
 int QLCNIC_UNI_FIRMWARE_IDX_OFF ;
 int le32_to_cpu (int ) ;
 struct uni_data_desc* qlcnic_get_data_desc (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static u32 qlcnic_get_fw_size(struct qlcnic_adapter *adapter)
{
 struct uni_data_desc *data_desc;
 const u8 *unirom = adapter->fw->data;

 data_desc = qlcnic_get_data_desc(adapter, QLCNIC_UNI_DIR_SECT_FW,
      QLCNIC_UNI_FIRMWARE_IDX_OFF);

 if (adapter->ahw->fw_type == QLCNIC_UNIFIED_ROMIMAGE)
  return le32_to_cpu(data_desc->size);
 else
  return le32_to_cpu(*(__le32 *)&unirom[QLCNIC_FW_SIZE_OFFSET]);
}
