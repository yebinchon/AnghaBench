
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct TYPE_2__ {int bit_map; int word; int section; } ;
struct amd64_pvt {int F3; TYPE_1__ injection; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int F10_NB_ARRAY_ADDR ;
 int F10_NB_ARRAY_DATA ;
 int F10_NB_ARRAY_DRAM_ECC ;
 int SET_NB_ARRAY_ADDRESS (int ) ;
 int SET_NB_DRAM_INJECTION_WRITE (int ,int ) ;
 int amd64_write_pci_cfg (int ,int ,int) ;
 int debugf0 (char*,int,int) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t amd64_inject_write_store(struct mem_ctl_info *mci,
     const char *data, size_t count)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 unsigned long value;
 u32 section, word_bits;
 int ret = 0;

 ret = strict_strtoul(data, 10, &value);
 if (ret != -EINVAL) {


  section = F10_NB_ARRAY_DRAM_ECC |
    SET_NB_ARRAY_ADDRESS(pvt->injection.section);
  amd64_write_pci_cfg(pvt->F3, F10_NB_ARRAY_ADDR, section);

  word_bits = SET_NB_DRAM_INJECTION_WRITE(pvt->injection.word,
      pvt->injection.bit_map);


  amd64_write_pci_cfg(pvt->F3, F10_NB_ARRAY_DATA, word_bits);

  debugf0("section=0x%x word_bits=0x%x\n", section, word_bits);

  return count;
 }
 return ret;
}
