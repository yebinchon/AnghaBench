
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct uni_table_desc {int findex; int entry_size; int num_entries; } ;
struct netxen_adapter {TYPE_1__* fw; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ size; int * data; } ;


 int EINVAL ;
 scalar_t__ QLCNIC_FILEHEADER_SIZE ;
 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static int
netxen_nic_validate_header(struct netxen_adapter *adapter)
 {
 const u8 *unirom = adapter->fw->data;
 struct uni_table_desc *directory = (struct uni_table_desc *) &unirom[0];
 u32 fw_file_size = adapter->fw->size;
 u32 tab_size;
 __le32 entries;
 __le32 entry_size;

 if (fw_file_size < QLCNIC_FILEHEADER_SIZE)
  return -EINVAL;

 entries = cpu_to_le32(directory->num_entries);
 entry_size = cpu_to_le32(directory->entry_size);
 tab_size = cpu_to_le32(directory->findex) + (entries * entry_size);

 if (fw_file_size < tab_size)
  return -EINVAL;

 return 0;
}
