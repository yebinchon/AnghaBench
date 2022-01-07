
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {int size; int in_read; int nchunks; int * addr; } ;
struct iwl_test {TYPE_1__ mem; struct iwl_trans* trans; } ;


 int DIV_ROUND_UP (int,int ) ;
 int DUMP_CHUNK_SIZE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HBUS_TARG_PRPH_RADDR ;
 int HBUS_TARG_PRPH_RDAT ;
 int IWL_ABS_PRPH_START ;
 int PRPH_END ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_trans_grab_nic_access (struct iwl_trans*,int,unsigned long*) ;
 int iwl_trans_read_mem (struct iwl_trans*,int,int *,int) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int iwl_test_indirect_read(struct iwl_test *tst, u32 addr, u32 size)
{
 struct iwl_trans *trans = tst->trans;
 unsigned long flags;
 int i;

 if (size & 0x3)
  return -EINVAL;

 tst->mem.size = size;
 tst->mem.addr = kmalloc(tst->mem.size, GFP_KERNEL);
 if (tst->mem.addr == ((void*)0))
  return -ENOMEM;


 if (IWL_ABS_PRPH_START <= addr &&
     addr < IWL_ABS_PRPH_START + PRPH_END) {
   if (!iwl_trans_grab_nic_access(trans, 0, &flags)) {
    return -EIO;
   }
   iwl_write32(trans, HBUS_TARG_PRPH_RADDR,
        addr | (3 << 24));
   for (i = 0; i < size; i += 4)
    *(u32 *)(tst->mem.addr + i) =
     iwl_read32(trans, HBUS_TARG_PRPH_RDAT);
   iwl_trans_release_nic_access(trans, &flags);
 } else {
  iwl_trans_read_mem(trans, addr, tst->mem.addr,
       tst->mem.size / 4);
 }

 tst->mem.nchunks =
  DIV_ROUND_UP(tst->mem.size, DUMP_CHUNK_SIZE);
 tst->mem.in_read = 1;
 return 0;

}
