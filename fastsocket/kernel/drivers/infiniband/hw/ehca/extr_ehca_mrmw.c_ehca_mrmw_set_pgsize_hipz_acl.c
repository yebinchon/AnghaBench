
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ehca_encode_hwpage_size (int) ;

void ehca_mrmw_set_pgsize_hipz_acl(u32 pgsize, u32 *hipz_acl)
{
 *hipz_acl |= (ehca_encode_hwpage_size(pgsize) << 24);
}
