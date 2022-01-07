
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mscp {int cp_dma_addr; int cdb_len; scalar_t__ adapter_status; int * cdb; void* data_len; void* data_address; int xdir; int opcode; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__* cp_stat; int pdev; struct mscp* cp; struct mscp* board_id; } ;
struct TYPE_3__ {scalar_t__ io_port; } ;


 int BN (unsigned int) ;
 int CMD_CLR_INTR ;
 int CMD_OGM_INTR ;
 scalar_t__ CP_TAIL_SIZE ;
 int DTD_IN ;
 int FALSE ;
 scalar_t__ FREE ;
 void* H2DEV (int) ;
 int HA_CMD_INQUIRY ;
 TYPE_2__* HD (unsigned int) ;
 unsigned long HZ ;
 scalar_t__ IGNORE ;
 int MAXLOOP ;
 int OP_HOST_ADAPTER ;
 int PCI_DMA_BIDIRECTIONAL ;
 scalar_t__ REG_LCL_INTR ;
 scalar_t__ REG_OGM ;
 scalar_t__ REG_SYS_INTR ;
 int TRUE ;
 int driver_lock ;
 unsigned long jiffies ;
 int memset (struct mscp*,int ,scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (void*,scalar_t__) ;
 void* pci_map_single (int ,struct mscp*,int,int ) ;
 int pci_unmap_single (int ,int,int,int ) ;
 int printk (char*,int ,...) ;
 TYPE_1__** sh ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (long) ;
 scalar_t__ wait_on_busy (scalar_t__,int ) ;

__attribute__((used)) static int board_inquiry(unsigned int j) {
   struct mscp *cpp;
   dma_addr_t id_dma_addr;
   unsigned int limit = 0;
   unsigned long time;

   id_dma_addr = pci_map_single(HD(j)->pdev, HD(j)->board_id,
                    sizeof(HD(j)->board_id), PCI_DMA_BIDIRECTIONAL);
   cpp = &HD(j)->cp[0];
   cpp->cp_dma_addr = pci_map_single(HD(j)->pdev, cpp, sizeof(struct mscp),
                                     PCI_DMA_BIDIRECTIONAL);
   memset(cpp, 0, sizeof(struct mscp) - CP_TAIL_SIZE);
   cpp->opcode = OP_HOST_ADAPTER;
   cpp->xdir = DTD_IN;
   cpp->data_address = H2DEV(id_dma_addr);
   cpp->data_len = H2DEV(sizeof(HD(j)->board_id));
   cpp->cdb_len = 6;
   cpp->cdb[0] = HA_CMD_INQUIRY;

   if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
      printk("%s: board_inquiry, adapter busy.\n", BN(j));
      return TRUE;
      }

   HD(j)->cp_stat[0] = IGNORE;


   outb(CMD_CLR_INTR, sh[j]->io_port + REG_SYS_INTR);


   outl(H2DEV(cpp->cp_dma_addr), sh[j]->io_port + REG_OGM);


   outb(CMD_OGM_INTR, sh[j]->io_port + REG_LCL_INTR);

   spin_unlock_irq(&driver_lock);
   time = jiffies;
   while ((jiffies - time) < HZ && limit++ < 20000) udelay(100L);
   spin_lock_irq(&driver_lock);

   if (cpp->adapter_status || HD(j)->cp_stat[0] != FREE) {
      HD(j)->cp_stat[0] = FREE;
      printk("%s: board_inquiry, err 0x%x.\n", BN(j), cpp->adapter_status);
      return TRUE;
      }

   pci_unmap_single(HD(j)->pdev, cpp->cp_dma_addr, sizeof(struct mscp),
                    PCI_DMA_BIDIRECTIONAL);
   pci_unmap_single(HD(j)->pdev, id_dma_addr, sizeof(HD(j)->board_id),
                    PCI_DMA_BIDIRECTIONAL);
   return FALSE;
}
