
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct __mem {int size; int addr; } ;
struct TYPE_4__ {struct __mem mem; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {TYPE_3__* ahw; TYPE_2__* pdev; } ;
typedef int __le32 ;
struct TYPE_6__ {int mem_lock; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int MAX_CTL_CHECK ;
 int QLCNIC_MS_ADDR_HI ;
 int QLCNIC_MS_ADDR_LO ;
 int QLCNIC_MS_CTRL ;
 int QLCNIC_TA_START_ENABLE ;
 int TA_CTL_BUSY ;
 int cpu_to_le32 (int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ printk_ratelimit () ;
 int qlcnic_ind_rd (struct qlcnic_adapter*,int ) ;
 int qlcnic_ind_wr (struct qlcnic_adapter*,int ,int) ;
 int * qlcnic_ms_read_data ;

__attribute__((used)) static u32 qlcnic_read_memory(struct qlcnic_adapter *adapter,
         struct qlcnic_dump_entry *entry, __le32 *buffer)
{
 u32 addr, data, test, ret = 0;
 int i, reg_read;
 struct __mem *mem = &entry->region.mem;

 reg_read = mem->size;
 addr = mem->addr;

 if ((addr & 0xf) || (reg_read%16)) {
  dev_info(&adapter->pdev->dev,
    "Unaligned memory addr:0x%x size:0x%x\n",
    addr, reg_read);
  return -EINVAL;
 }

 mutex_lock(&adapter->ahw->mem_lock);

 while (reg_read != 0) {
  qlcnic_ind_wr(adapter, QLCNIC_MS_ADDR_LO, addr);
  qlcnic_ind_wr(adapter, QLCNIC_MS_ADDR_HI, 0);
  qlcnic_ind_wr(adapter, QLCNIC_MS_CTRL, QLCNIC_TA_START_ENABLE);

  for (i = 0; i < MAX_CTL_CHECK; i++) {
   test = qlcnic_ind_rd(adapter, QLCNIC_MS_CTRL);
   if (!(test & TA_CTL_BUSY))
    break;
  }
  if (i == MAX_CTL_CHECK) {
   if (printk_ratelimit()) {
    dev_err(&adapter->pdev->dev,
     "failed to read through agent\n");
    ret = -EINVAL;
    goto out;
   }
  }
  for (i = 0; i < 4; i++) {
   data = qlcnic_ind_rd(adapter, qlcnic_ms_read_data[i]);
   *buffer++ = cpu_to_le32(data);
  }
  addr += 16;
  reg_read -= 16;
  ret += 16;
 }
out:
 mutex_unlock(&adapter->ahw->mem_lock);
 return mem->size;
}
