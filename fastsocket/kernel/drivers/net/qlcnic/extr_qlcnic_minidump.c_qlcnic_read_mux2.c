
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __mux2 {int sel_val1; int sel_val2; int no_ops; int sel_val_mask; scalar_t__ sel_val_stride; int read_addr; int sel_addr2; int sel_addr1; } ;
struct TYPE_2__ {struct __mux2 mux2; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {int dummy; } ;
typedef int __le32 ;


 void* cpu_to_le32 (int) ;
 int qlcnic_ind_rd (struct qlcnic_adapter*,int ) ;
 int qlcnic_ind_wr (struct qlcnic_adapter*,int ,int) ;

__attribute__((used)) static u32 qlcnic_read_mux2(struct qlcnic_adapter *adapter,
       struct qlcnic_dump_entry *entry, __le32 *buffer)
{
 struct __mux2 *mux2 = &entry->region.mux2;
 u32 data;
 u32 t_sel_val, sel_val1, sel_val2;
 int i;

 sel_val1 = mux2->sel_val1;
 sel_val2 = mux2->sel_val2;

 for (i = 0; i < mux2->no_ops; i++) {
  qlcnic_ind_wr(adapter, mux2->sel_addr1, sel_val1);
  t_sel_val = sel_val1 & mux2->sel_val_mask;
  qlcnic_ind_wr(adapter, mux2->sel_addr2, t_sel_val);
  data = qlcnic_ind_rd(adapter, mux2->read_addr);
  *buffer++ = cpu_to_le32(t_sel_val);
  *buffer++ = cpu_to_le32(data);
  qlcnic_ind_wr(adapter, mux2->sel_addr1, sel_val2);
  t_sel_val = sel_val2 & mux2->sel_val_mask;
  qlcnic_ind_wr(adapter, mux2->sel_addr2, t_sel_val);
  data = qlcnic_ind_rd(adapter, mux2->read_addr);
  *buffer++ = cpu_to_le32(t_sel_val);
  *buffer++ = cpu_to_le32(data);
  sel_val1 += mux2->sel_val_stride;
  sel_val2 += mux2->sel_val_stride;
 }

 return mux2->no_ops * (4 * sizeof(u32));
}
