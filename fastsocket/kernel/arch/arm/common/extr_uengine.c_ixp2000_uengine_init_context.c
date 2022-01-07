
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSR_CTX_POINTER ;
 int INDIRECT_CTX_SIG_EVENTS ;
 int INDIRECT_CTX_STS ;
 int INDIRECT_CTX_WAKEUP_EVENTS ;
 int ixp2000_uengine_csr_write (int,int ,int) ;

void ixp2000_uengine_init_context(int uengine, int context, int pc)
{



 ixp2000_uengine_csr_write(uengine, CSR_CTX_POINTER, context);




 ixp2000_uengine_csr_write(uengine, INDIRECT_CTX_SIG_EVENTS, 1);
 ixp2000_uengine_csr_write(uengine, INDIRECT_CTX_WAKEUP_EVENTS, 1);




 ixp2000_uengine_csr_write(uengine, INDIRECT_CTX_STS, pc);
}
