
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CTX_ENABLES ;
 int ixp2000_uengine_csr_read (int,int ) ;
 int ixp2000_uengine_csr_write (int,int ,int) ;

void ixp2000_uengine_start_contexts(int uengine, u8 ctx_mask)
{
 u32 mask;




 mask = ixp2000_uengine_csr_read(uengine, CTX_ENABLES);
 mask |= ctx_mask << 8;
 ixp2000_uengine_csr_write(uengine, CTX_ENABLES, mask);
}
