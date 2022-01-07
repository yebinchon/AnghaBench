
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_handle {int fillasid; unsigned long fillvaddr; unsigned long pfn; int gaa; int dirty; int pagesize; int opc; } ;


 unsigned long GRU_PADDR_SHIFT ;
 int TFHOP_WRITE_ONLY ;
 int start_instruction (struct gru_tlb_fault_handle*) ;
 int tfhop_write_only ;
 int wait_instruction_complete (struct gru_tlb_fault_handle*,int ) ;

int tfh_write_only(struct gru_tlb_fault_handle *tfh,
      unsigned long paddr, int gaa,
      unsigned long vaddr, int asid, int dirty,
      int pagesize)
{
 tfh->fillasid = asid;
 tfh->fillvaddr = vaddr;
 tfh->pfn = paddr >> GRU_PADDR_SHIFT;
 tfh->gaa = gaa;
 tfh->dirty = dirty;
 tfh->pagesize = pagesize;
 tfh->opc = TFHOP_WRITE_ONLY;
 start_instruction(tfh);
 return wait_instruction_complete(tfh, tfhop_write_only);
}
