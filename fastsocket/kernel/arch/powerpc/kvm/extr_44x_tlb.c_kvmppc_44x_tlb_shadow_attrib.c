
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PPC44x_TLB_M ;
 int PPC44x_TLB_PERM_MASK ;
 int PPC44x_TLB_SR ;
 int PPC44x_TLB_SUPER_PERM_MASK ;
 int PPC44x_TLB_SW ;
 int PPC44x_TLB_SX ;
 int PPC44x_TLB_UATTR_MASK ;
 int PPC44x_TLB_USER_PERM_MASK ;

__attribute__((used)) static u32 kvmppc_44x_tlb_shadow_attrib(u32 attrib, int usermode)
{

 attrib &= PPC44x_TLB_PERM_MASK|PPC44x_TLB_UATTR_MASK;

 if (!usermode) {


  attrib &= ~PPC44x_TLB_USER_PERM_MASK;
  attrib |= (attrib & PPC44x_TLB_SUPER_PERM_MASK) << 3;
 }


 attrib |= PPC44x_TLB_SX|PPC44x_TLB_SR|PPC44x_TLB_SW;


 attrib |= PPC44x_TLB_M;

 return attrib;
}
