
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct uni_table_desc {int entry_size; int findex; } ;
struct uni_data_desc {int size; int findex; } ;
struct qlcnic_adapter {size_t file_prd_off; TYPE_1__* fw; } ;
typedef int __le32 ;
struct TYPE_2__ {int size; int * data; } ;


 int EINVAL ;
 int QLCNIC_UNI_DIR_SECT_FW ;
 int QLCNIC_UNI_FIRMWARE_IDX_OFF ;
 int le32_to_cpu (int ) ;
 struct uni_table_desc* qlcnic_get_table_desc (int const*,int ) ;

__attribute__((used)) static int
qlcnic_validate_fw(struct qlcnic_adapter *adapter)
{
 struct uni_table_desc *tab_desc;
 struct uni_data_desc *descr;
 const u8 *unirom = adapter->fw->data;
 u32 offs, tab_size, data_size, idx;
 __le32 temp;

 temp = *((__le32 *)&unirom[adapter->file_prd_off] +
   QLCNIC_UNI_FIRMWARE_IDX_OFF);
 idx = le32_to_cpu(temp);
 tab_desc = qlcnic_get_table_desc(unirom, QLCNIC_UNI_DIR_SECT_FW);

 if (!tab_desc)
  return -EINVAL;

 tab_size = le32_to_cpu(tab_desc->findex) +
     le32_to_cpu(tab_desc->entry_size) * (idx + 1);

 if (adapter->fw->size < tab_size)
  return -EINVAL;

 offs = le32_to_cpu(tab_desc->findex) +
        le32_to_cpu(tab_desc->entry_size) * idx;
 descr = (struct uni_data_desc *)&unirom[offs];
 data_size = le32_to_cpu(descr->findex) + le32_to_cpu(descr->size);

 if (adapter->fw->size < data_size)
  return -EINVAL;

 return 0;
}
