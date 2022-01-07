
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct btcx_riscmem {int dma; int * cpu; } ;
typedef int __le32 ;


 int RISC_IMM ;
 int RISC_IRQ2 ;
 int RISC_JUMP ;
 int RISC_WRITECR ;
 int btcx_riscmem_alloc (struct pci_dev*,struct btcx_riscmem*,int) ;
 void* cpu_to_le32 (int) ;

int cx88_risc_stopper(struct pci_dev *pci, struct btcx_riscmem *risc,
        u32 reg, u32 mask, u32 value)
{
 __le32 *rp;
 int rc;

 if ((rc = btcx_riscmem_alloc(pci, risc, 4*16)) < 0)
  return rc;


 rp = risc->cpu;
 *(rp++) = cpu_to_le32(RISC_WRITECR | RISC_IRQ2 | RISC_IMM);
 *(rp++) = cpu_to_le32(reg);
 *(rp++) = cpu_to_le32(value);
 *(rp++) = cpu_to_le32(mask);
 *(rp++) = cpu_to_le32(RISC_JUMP);
 *(rp++) = cpu_to_le32(risc->dma);
 return 0;
}
