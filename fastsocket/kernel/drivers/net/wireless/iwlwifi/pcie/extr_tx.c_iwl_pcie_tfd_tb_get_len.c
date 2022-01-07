
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct iwl_tfd_tb {int hi_n_len; } ;
struct iwl_tfd {struct iwl_tfd_tb* tbs; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 iwl_pcie_tfd_tb_get_len(struct iwl_tfd *tfd, u8 idx)
{
 struct iwl_tfd_tb *tb = &tfd->tbs[idx];

 return le16_to_cpu(tb->hi_n_len) >> 4;
}
