
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_tfd {int num_tbs; } ;



__attribute__((used)) static inline u8 iwl_pcie_tfd_get_num_tbs(struct iwl_tfd *tfd)
{
 return tfd->num_tbs & 0x1f;
}
