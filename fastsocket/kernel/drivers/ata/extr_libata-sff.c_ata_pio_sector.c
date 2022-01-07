
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {scalar_t__ curbytes; scalar_t__ nbytes; scalar_t__ sect_size; unsigned int cursg_ofs; TYPE_3__* cursg; int dev; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {TYPE_2__* ops; int hsm_task_state; } ;
struct TYPE_8__ {unsigned int offset; unsigned int length; } ;
struct TYPE_7__ {int (* sff_data_xfer ) (int ,unsigned char*,scalar_t__,int) ;} ;


 int ATA_TFLAG_WRITE ;
 int DPRINTK (char*,char*) ;
 int HSM_ST_LAST ;
 int KM_IRQ0 ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int PageSlab (struct page*) ;
 int flush_dcache_page (struct page*) ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct page* nth_page (struct page*,unsigned int) ;
 unsigned char* page_address (struct page*) ;
 TYPE_3__* sg_next (TYPE_3__*) ;
 struct page* sg_page (TYPE_3__*) ;
 int stub1 (int ,unsigned char*,scalar_t__,int) ;
 int stub2 (int ,unsigned char*,scalar_t__,int) ;

__attribute__((used)) static void ata_pio_sector(struct ata_queued_cmd *qc)
{
 int do_write = (qc->tf.flags & ATA_TFLAG_WRITE);
 struct ata_port *ap = qc->ap;
 struct page *page;
 unsigned int offset;
 unsigned char *buf;

 if (qc->curbytes == qc->nbytes - qc->sect_size)
  ap->hsm_task_state = HSM_ST_LAST;

 page = sg_page(qc->cursg);
 offset = qc->cursg->offset + qc->cursg_ofs;


 page = nth_page(page, (offset >> PAGE_SHIFT));
 offset %= PAGE_SIZE;

 DPRINTK("data %s\n", qc->tf.flags & ATA_TFLAG_WRITE ? "write" : "read");

 if (PageHighMem(page)) {
  unsigned long flags;


  local_irq_save(flags);
  buf = kmap_atomic(page, KM_IRQ0);


  ap->ops->sff_data_xfer(qc->dev, buf + offset, qc->sect_size,
           do_write);

  kunmap_atomic(buf, KM_IRQ0);
  local_irq_restore(flags);
 } else {
  buf = page_address(page);
  ap->ops->sff_data_xfer(qc->dev, buf + offset, qc->sect_size,
           do_write);
 }

 if (!do_write && !PageSlab(page))
  flush_dcache_page(page);

 qc->curbytes += qc->sect_size;
 qc->cursg_ofs += qc->sect_size;

 if (qc->cursg_ofs == qc->cursg->length) {
  qc->cursg = sg_next(qc->cursg);
  qc->cursg_ofs = 0;
 }
}
