
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct qlcnic_dump_entry {TYPE_1__ hdr; } ;
struct qlcnic_adapter {int dummy; } ;
typedef int __le32 ;


 int QLCNIC_DUMP_SKIP ;

__attribute__((used)) static u32 qlcnic_dump_nop(struct qlcnic_adapter *adapter,
      struct qlcnic_dump_entry *entry, __le32 *buffer)
{
 entry->hdr.flags |= QLCNIC_DUMP_SKIP;
 return 0;
}
