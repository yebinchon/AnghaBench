
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
struct btcx_riscmem {int size; int * cpu; int * jmp; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 int NO_SYNC_LINE ;
 unsigned int PAGE_SIZE ;
 int btcx_riscmem_alloc (struct pci_dev*,struct btcx_riscmem*,int) ;
 int * cx23885_risc_field (int *,struct scatterlist*,int ,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int cx23885_risc_databuffer(struct pci_dev *pci,
       struct btcx_riscmem *risc,
       struct scatterlist *sglist,
       unsigned int bpl,
       unsigned int lines)
{
 u32 instructions;
 __le32 *rp;
 int rc;






 instructions = 1 + (bpl * lines) / PAGE_SIZE + lines;
 instructions += 1;

 rc = btcx_riscmem_alloc(pci, risc, instructions*12);
 if (rc < 0)
  return rc;


 rp = risc->cpu;
 rp = cx23885_risc_field(rp, sglist, 0, NO_SYNC_LINE, bpl, 0, lines);


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
