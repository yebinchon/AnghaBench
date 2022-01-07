
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int height; int top; int left; int width; } ;
struct bttv_overlay {int nclips; TYPE_4__ w; int clips; } ;
struct bttv_format {int depth; } ;
struct TYPE_6__ {int bytesperline; } ;
struct TYPE_7__ {TYPE_2__ fmt; scalar_t__ base; } ;
struct TYPE_5__ {int pci; } ;
struct bttv {scalar_t__ opt_vcr_hack; TYPE_3__ fbuf; TYPE_1__ c; } ;
struct btcx_skiplist {int start; int end; } ;
struct btcx_riscmem {int size; int * cpu; int * jmp; } ;
typedef int __le32 ;


 int BT848_FIFO_STATUS_FM1 ;
 int BT848_RISC_EOL ;
 int BT848_RISC_SKIP ;
 int BT848_RISC_SOL ;
 int BT848_RISC_SYNC ;
 int BT848_RISC_WRITE ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VCR_HACK_LINES ;
 int btcx_calc_skips (int,int,int*,struct btcx_skiplist*,unsigned int*,int ,int) ;
 int btcx_riscmem_alloc (int ,struct btcx_riscmem*,int) ;
 void* cpu_to_le32 (int) ;
 int kfree (struct btcx_skiplist*) ;
 struct btcx_skiplist* kmalloc (int,int ) ;

__attribute__((used)) static int
bttv_risc_overlay(struct bttv *btv, struct btcx_riscmem *risc,
    const struct bttv_format *fmt, struct bttv_overlay *ov,
    int skip_even, int skip_odd)
{
 int dwords, rc, line, maxy, start, end;
 unsigned skip, nskips;
 struct btcx_skiplist *skips;
 __le32 *rp;
 u32 ri,ra;
 u32 addr;


 if (((void*)0) == (skips = kmalloc(sizeof(*skips) * ov->nclips,GFP_KERNEL)))
  return -ENOMEM;



 dwords = (3 * ov->nclips + 2) *
  ((skip_even || skip_odd) ? (ov->w.height+1)>>1 : ov->w.height);
 dwords += 4;
 if ((rc = btcx_riscmem_alloc(btv->c.pci,risc,dwords*4)) < 0) {
  kfree(skips);
  return rc;
 }


 rp = risc->cpu;
 *(rp++) = cpu_to_le32(BT848_RISC_SYNC|BT848_FIFO_STATUS_FM1);
 *(rp++) = cpu_to_le32(0);

 addr = (unsigned long)btv->fbuf.base;
 addr += btv->fbuf.fmt.bytesperline * ov->w.top;
 addr += (fmt->depth >> 3) * ov->w.left;


 for (maxy = -1, line = 0; line < ov->w.height;
      line++, addr += btv->fbuf.fmt.bytesperline) {
  if ((btv->opt_vcr_hack) &&
       (line >= (ov->w.height - VCR_HACK_LINES)))
   continue;
  if ((line%2) == 0 && skip_even)
   continue;
  if ((line%2) == 1 && skip_odd)
   continue;


  if (line > maxy)
   btcx_calc_skips(line, ov->w.width, &maxy,
     skips, &nskips, ov->clips, ov->nclips);


  for (start = 0, skip = 0; start < ov->w.width; start = end) {
   if (skip >= nskips) {
    ri = BT848_RISC_WRITE;
    end = ov->w.width;
   } else if (start < skips[skip].start) {
    ri = BT848_RISC_WRITE;
    end = skips[skip].start;
   } else {
    ri = BT848_RISC_SKIP;
    end = skips[skip].end;
    skip++;
   }
   if (BT848_RISC_WRITE == ri)
    ra = addr + (fmt->depth>>3)*start;
   else
    ra = 0;

   if (0 == start)
    ri |= BT848_RISC_SOL;
   if (ov->w.width == end)
    ri |= BT848_RISC_EOL;
   ri |= (fmt->depth>>3) * (end-start);

   *(rp++)=cpu_to_le32(ri);
   if (0 != ra)
    *(rp++)=cpu_to_le32(ra);
  }
 }


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 kfree(skips);
 return 0;
}
