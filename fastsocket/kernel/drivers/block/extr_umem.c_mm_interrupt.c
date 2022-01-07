
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cardinfo {int flags; unsigned int dma_status; int tasklet; TYPE_1__* dev; scalar_t__ csr_remap; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;


 unsigned int DMASCR_ANY_ERR ;
 unsigned int DMASCR_CHAIN_COMPLETE ;
 unsigned int DMASCR_DMA_COMPLETE ;
 unsigned int DMASCR_ERROR_MASK ;
 unsigned int DMASCR_MASTER_ABT ;
 unsigned int DMASCR_PARITY_ERR_DET ;
 unsigned int DMASCR_PARITY_ERR_REP ;
 unsigned int DMASCR_SYSTEM_ERR_SIG ;
 unsigned int DMASCR_TARGET_ABT ;
 scalar_t__ DMA_STATUS_CTRL ;
 scalar_t__ ERROR_ADDR_LOG ;
 scalar_t__ ERROR_CHECK ;
 scalar_t__ ERROR_COUNT ;
 scalar_t__ ERROR_DATA_LOG ;
 scalar_t__ ERROR_SYNDROME ;
 int HW_TRACE (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_ERR ;
 scalar_t__ MEMCTRLCMD_ERRSTATUS ;
 int PCI_STATUS ;
 int UM_FLAG_NO_BYTE_STATUS ;
 int cpu_to_le32 (unsigned int) ;
 int dev_printk (int ,int *,char*,...) ;
 int dump_dmastat (struct cardinfo*,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int pci_read_config_word (TYPE_1__*,int ,unsigned short*) ;
 int pci_write_config_word (TYPE_1__*,int ,unsigned short) ;
 void* readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int tasklet_schedule (int *) ;
 int writeb (unsigned int,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mm_interrupt(int irq, void *__card)
{
 struct cardinfo *card = (struct cardinfo *) __card;
 unsigned int dma_status;
 unsigned short cfg_status;

HW_TRACE(0x30);

 dma_status = le32_to_cpu(readl(card->csr_remap + DMA_STATUS_CTRL));

 if (!(dma_status & (DMASCR_ERROR_MASK | DMASCR_CHAIN_COMPLETE))) {

  return IRQ_NONE;
 }


 if (card->flags & UM_FLAG_NO_BYTE_STATUS)
  writel(cpu_to_le32(DMASCR_DMA_COMPLETE|DMASCR_CHAIN_COMPLETE),
         card->csr_remap + DMA_STATUS_CTRL);
 else
  writeb((DMASCR_DMA_COMPLETE|DMASCR_CHAIN_COMPLETE) >> 16,
         card->csr_remap + DMA_STATUS_CTRL + 2);


 if (dma_status & DMASCR_ANY_ERR) {
  unsigned int data_log1, data_log2;
  unsigned int addr_log1, addr_log2;
  unsigned char stat, count, syndrome, check;

  stat = readb(card->csr_remap + MEMCTRLCMD_ERRSTATUS);

  data_log1 = le32_to_cpu(readl(card->csr_remap +
      ERROR_DATA_LOG));
  data_log2 = le32_to_cpu(readl(card->csr_remap +
      ERROR_DATA_LOG + 4));
  addr_log1 = le32_to_cpu(readl(card->csr_remap +
      ERROR_ADDR_LOG));
  addr_log2 = readb(card->csr_remap + ERROR_ADDR_LOG + 4);

  count = readb(card->csr_remap + ERROR_COUNT);
  syndrome = readb(card->csr_remap + ERROR_SYNDROME);
  check = readb(card->csr_remap + ERROR_CHECK);

  dump_dmastat(card, dma_status);

  if (stat & 0x01)
   dev_printk(KERN_ERR, &card->dev->dev,
    "Memory access error detected (err count %d)\n",
    count);
  if (stat & 0x02)
   dev_printk(KERN_ERR, &card->dev->dev,
    "Multi-bit EDC error\n");

  dev_printk(KERN_ERR, &card->dev->dev,
   "Fault Address 0x%02x%08x, Fault Data 0x%08x%08x\n",
   addr_log2, addr_log1, data_log2, data_log1);
  dev_printk(KERN_ERR, &card->dev->dev,
   "Fault Check 0x%02x, Fault Syndrome 0x%02x\n",
   check, syndrome);

  writeb(0, card->csr_remap + ERROR_COUNT);
 }

 if (dma_status & DMASCR_PARITY_ERR_REP) {
  dev_printk(KERN_ERR, &card->dev->dev,
   "PARITY ERROR REPORTED\n");
  pci_read_config_word(card->dev, PCI_STATUS, &cfg_status);
  pci_write_config_word(card->dev, PCI_STATUS, cfg_status);
 }

 if (dma_status & DMASCR_PARITY_ERR_DET) {
  dev_printk(KERN_ERR, &card->dev->dev,
   "PARITY ERROR DETECTED\n");
  pci_read_config_word(card->dev, PCI_STATUS, &cfg_status);
  pci_write_config_word(card->dev, PCI_STATUS, cfg_status);
 }

 if (dma_status & DMASCR_SYSTEM_ERR_SIG) {
  dev_printk(KERN_ERR, &card->dev->dev, "SYSTEM ERROR\n");
  pci_read_config_word(card->dev, PCI_STATUS, &cfg_status);
  pci_write_config_word(card->dev, PCI_STATUS, cfg_status);
 }

 if (dma_status & DMASCR_TARGET_ABT) {
  dev_printk(KERN_ERR, &card->dev->dev, "TARGET ABORT\n");
  pci_read_config_word(card->dev, PCI_STATUS, &cfg_status);
  pci_write_config_word(card->dev, PCI_STATUS, cfg_status);
 }

 if (dma_status & DMASCR_MASTER_ABT) {
  dev_printk(KERN_ERR, &card->dev->dev, "MASTER ABORT\n");
  pci_read_config_word(card->dev, PCI_STATUS, &cfg_status);
  pci_write_config_word(card->dev, PCI_STATUS, cfg_status);
 }


 card->dma_status = dma_status;
 tasklet_schedule(&card->tasklet);

HW_TRACE(0x36);

 return IRQ_HANDLED;
}
