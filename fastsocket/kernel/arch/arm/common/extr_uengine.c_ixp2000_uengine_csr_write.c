
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LOCAL_CSR_STATUS ;
 int ixp2000_reg_read (int *) ;
 int ixp2000_reg_write (int *,int ) ;
 void* ixp2000_uengine_csr_area (int) ;

void ixp2000_uengine_csr_write(int uengine, int offset, u32 value)
{
 void *uebase;
 u32 *local_csr_status;
 u32 *reg;

 uebase = ixp2000_uengine_csr_area(uengine);

 local_csr_status = (u32 *)(uebase + LOCAL_CSR_STATUS);
 reg = (u32 *)(uebase + offset);
 do {
  ixp2000_reg_write(reg, value);
 } while (ixp2000_reg_read(local_csr_status) & 1);
}
