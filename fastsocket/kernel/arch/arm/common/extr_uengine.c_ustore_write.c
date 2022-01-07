
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int USTORE_DATA_LOWER ;
 int USTORE_DATA_UPPER ;
 int ixp2000_uengine_csr_write (int,int ,int ) ;
 scalar_t__ make_even_parity (int) ;

__attribute__((used)) static void ustore_write(int uengine, u64 insn)
{



 insn |= (u64)make_even_parity((insn >> 20) & 0x000fffff) << 41;
 insn |= (u64)make_even_parity(insn & 0x000fffff) << 40;





 ixp2000_uengine_csr_write(uengine, USTORE_DATA_LOWER, (u32)insn);
 ixp2000_uengine_csr_write(uengine, USTORE_DATA_UPPER, (u32)(insn >> 32));
}
