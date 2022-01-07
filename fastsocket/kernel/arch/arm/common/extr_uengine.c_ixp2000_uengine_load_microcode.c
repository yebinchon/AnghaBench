
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;


 int USTORE_ADDRESS ;
 int ixp2000_uengine_csr_read (int,int ) ;
 int ixp2000_uengine_csr_write (int,int ,int) ;
 int ustore_write (int,int) ;

void ixp2000_uengine_load_microcode(int uengine, u8 *ucode, int insns)
{
 int i;




 ixp2000_uengine_csr_write(uengine, USTORE_ADDRESS, 0x80000000);
 for (i = 0; i < insns; i++) {
  u64 insn;

  insn = (((u64)ucode[0]) << 32) |
   (((u64)ucode[1]) << 24) |
   (((u64)ucode[2]) << 16) |
   (((u64)ucode[3]) << 8) |
   ((u64)ucode[4]);
  ucode += 5;

  ustore_write(uengine, insn);
 }







 for (i = 0; i < 4; i++) {
  u32 addr;

  addr = ixp2000_uengine_csr_read(uengine, USTORE_ADDRESS);
  if (addr == 0x80000000)
   break;
  ustore_write(uengine, 0xf0000c0300ULL);
 }




 ixp2000_uengine_csr_write(uengine, USTORE_ADDRESS, 0x00000000);
}
