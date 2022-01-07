
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct netxen_adapter {scalar_t__ fw_type; TYPE_1__* fw; } ;
typedef int __le32 ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int * data; } ;


 size_t NX_FW_SIZE_OFFSET ;
 scalar_t__ NX_UNIFIED_ROMIMAGE ;
 int NX_UNI_DIR_SECT_FW ;
 int NX_UNI_FIRMWARE_IDX_OFF ;
 int cpu_to_le32 (int ) ;
 TYPE_2__* nx_get_data_desc (struct netxen_adapter*,int ,int ) ;

__attribute__((used)) static __le32
nx_get_fw_size(struct netxen_adapter *adapter)
{
 if (adapter->fw_type == NX_UNIFIED_ROMIMAGE)
  return cpu_to_le32((nx_get_data_desc(adapter,
     NX_UNI_DIR_SECT_FW,
     NX_UNI_FIRMWARE_IDX_OFF))->size);
 else
  return cpu_to_le32(
    *(u32 *)&adapter->fw->data[NX_FW_SIZE_OFFSET]);
}
