
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int pci; } ;
struct bttv {scalar_t__ opt_vcr_hack; TYPE_1__ c; } ;
struct btcx_riscmem {int size; int * cpu; int * jmp; } ;
typedef int __le32 ;


 unsigned int BT848_FIFO_STATUS_FM1 ;
 unsigned int BT848_RISC_EOL ;
 unsigned int BT848_RISC_SKIP ;
 unsigned int BT848_RISC_SOL ;
 unsigned int BT848_RISC_SYNC ;
 unsigned int BT848_RISC_WRITE ;
 int BUG_ON (int) ;
 unsigned int PAGE_SIZE ;
 unsigned int VCR_HACK_LINES ;
 int btcx_riscmem_alloc (int ,struct btcx_riscmem*,int) ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

int
bttv_risc_packed(struct bttv *btv, struct btcx_riscmem *risc,
   struct scatterlist *sglist,
   unsigned int offset, unsigned int bpl,
   unsigned int padding, unsigned int skip_lines,
   unsigned int store_lines)
{
 u32 instructions,line,todo;
 struct scatterlist *sg;
 __le32 *rp;
 int rc;





 instructions = skip_lines * 4;
 instructions += (1 + ((bpl + padding) * store_lines)
    / PAGE_SIZE + store_lines) * 8;
 instructions += 2 * 8;
 if ((rc = btcx_riscmem_alloc(btv->c.pci,risc,instructions)) < 0)
  return rc;


 rp = risc->cpu;
 *(rp++) = cpu_to_le32(BT848_RISC_SYNC|BT848_FIFO_STATUS_FM1);
 *(rp++) = cpu_to_le32(0);

 while (skip_lines-- > 0) {
  *(rp++) = cpu_to_le32(BT848_RISC_SKIP | BT848_RISC_SOL |
          BT848_RISC_EOL | bpl);
 }


 sg = sglist;
 for (line = 0; line < store_lines; line++) {
  if ((btv->opt_vcr_hack) &&
      (line >= (store_lines - VCR_HACK_LINES)))
   continue;
  while (offset && offset >= sg_dma_len(sg)) {
   offset -= sg_dma_len(sg);
   sg++;
  }
  if (bpl <= sg_dma_len(sg)-offset) {

   *(rp++)=cpu_to_le32(BT848_RISC_WRITE|BT848_RISC_SOL|
         BT848_RISC_EOL|bpl);
   *(rp++)=cpu_to_le32(sg_dma_address(sg)+offset);
   offset+=bpl;
  } else {

   todo = bpl;
   *(rp++)=cpu_to_le32(BT848_RISC_WRITE|BT848_RISC_SOL|
         (sg_dma_len(sg)-offset));
   *(rp++)=cpu_to_le32(sg_dma_address(sg)+offset);
   todo -= (sg_dma_len(sg)-offset);
   offset = 0;
   sg++;
   while (todo > sg_dma_len(sg)) {
    *(rp++)=cpu_to_le32(BT848_RISC_WRITE|
          sg_dma_len(sg));
    *(rp++)=cpu_to_le32(sg_dma_address(sg));
    todo -= sg_dma_len(sg);
    sg++;
   }
   *(rp++)=cpu_to_le32(BT848_RISC_WRITE|BT848_RISC_EOL|
         todo);
   *(rp++)=cpu_to_le32(sg_dma_address(sg));
   offset += todo;
  }
  offset += padding;
 }


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
