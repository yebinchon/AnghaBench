
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LOCAL_CSR_STATUS ;
 int ixp2000_reg_read (int*) ;
 void* ixp2000_uengine_csr_area (int) ;

u32 ixp2000_uengine_csr_read(int uengine, int offset)
{
 void *uebase;
 u32 *local_csr_status;
 u32 *reg;
 u32 value;

 uebase = ixp2000_uengine_csr_area(uengine);

 local_csr_status = (u32 *)(uebase + LOCAL_CSR_STATUS);
 reg = (u32 *)(uebase + offset);
 do {
  value = ixp2000_reg_read(reg);
 } while (ixp2000_reg_read(local_csr_status) & 1);

 return value;
}
