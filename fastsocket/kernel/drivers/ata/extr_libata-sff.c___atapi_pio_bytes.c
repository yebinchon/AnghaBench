
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ata_queued_cmd {unsigned int curbytes; unsigned int cursg_ofs; struct scatterlist* cursg; TYPE_2__ tf; int nbytes; struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {TYPE_3__* ops; } ;
struct ata_eh_info {int dummy; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_6__ {unsigned int (* sff_data_xfer ) (struct ata_device*,unsigned char*,unsigned int,int) ;} ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;


 int ATA_TFLAG_WRITE ;
 int DPRINTK (char*,char*) ;
 int KM_IRQ0 ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int READ ;
 int WRITE ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,int ,unsigned int,unsigned int) ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct page* nth_page (struct page*,unsigned int) ;
 unsigned char* page_address (struct page*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;
 unsigned int stub1 (struct ata_device*,unsigned char*,unsigned int,int) ;
 unsigned int stub2 (struct ata_device*,unsigned char*,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __atapi_pio_bytes(struct ata_queued_cmd *qc, unsigned int bytes)
{
 int rw = (qc->tf.flags & ATA_TFLAG_WRITE) ? WRITE : READ;
 struct ata_port *ap = qc->ap;
 struct ata_device *dev = qc->dev;
 struct ata_eh_info *ehi = &dev->link->eh_info;
 struct scatterlist *sg;
 struct page *page;
 unsigned char *buf;
 unsigned int offset, count, consumed;

next_sg:
 sg = qc->cursg;
 if (unlikely(!sg)) {
  ata_ehi_push_desc(ehi, "unexpected or too much trailing data "
      "buf=%u cur=%u bytes=%u",
      qc->nbytes, qc->curbytes, bytes);
  return -1;
 }

 page = sg_page(sg);
 offset = sg->offset + qc->cursg_ofs;


 page = nth_page(page, (offset >> PAGE_SHIFT));
 offset %= PAGE_SIZE;


 count = min(sg->length - qc->cursg_ofs, bytes);


 count = min(count, (unsigned int)PAGE_SIZE - offset);

 DPRINTK("data %s\n", qc->tf.flags & ATA_TFLAG_WRITE ? "write" : "read");

 if (PageHighMem(page)) {
  unsigned long flags;


  local_irq_save(flags);
  buf = kmap_atomic(page, KM_IRQ0);


  consumed = ap->ops->sff_data_xfer(dev, buf + offset,
        count, rw);

  kunmap_atomic(buf, KM_IRQ0);
  local_irq_restore(flags);
 } else {
  buf = page_address(page);
  consumed = ap->ops->sff_data_xfer(dev, buf + offset,
        count, rw);
 }

 bytes -= min(bytes, consumed);
 qc->curbytes += count;
 qc->cursg_ofs += count;

 if (qc->cursg_ofs == sg->length) {
  qc->cursg = sg_next(qc->cursg);
  qc->cursg_ofs = 0;
 }







 if (bytes)
  goto next_sg;
 return 0;
}
