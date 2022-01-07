
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct iwl_tfd_tb {int hi_n_len; int lo; } ;
struct iwl_tfd {struct iwl_tfd_tb* tbs; } ;
typedef int dma_addr_t ;


 int get_unaligned_le32 (int *) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline dma_addr_t iwl_pcie_tfd_tb_get_addr(struct iwl_tfd *tfd, u8 idx)
{
 struct iwl_tfd_tb *tb = &tfd->tbs[idx];

 dma_addr_t addr = get_unaligned_le32(&tb->lo);
 if (sizeof(dma_addr_t) > sizeof(u32))
  addr |=
  ((dma_addr_t)(le16_to_cpu(tb->hi_n_len) & 0xF) << 16) << 16;

 return addr;
}
