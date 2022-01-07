
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sg_list {int dummy; } ;
struct scsi_host_template {void* use_clustering; } ;
struct mscp {int dummy; } ;
struct hostdata {int dummy; } ;
struct TYPE_11__ {unsigned char heads; unsigned char sectors; unsigned char subversion; unsigned int board_number; TYPE_5__* cp; int * pdev; scalar_t__* board_id; } ;
struct TYPE_10__ {int sglist; int cp_dma_addr; } ;
struct TYPE_9__ {unsigned long io_port; unsigned long unique_id; unsigned long base; unsigned char irq; int sg_tablesize; int this_id; unsigned char can_queue; int unchecked_isa_dma; unsigned char dma_channel; unsigned char max_channel; int max_id; int max_lun; TYPE_1__* hostt; scalar_t__ cmd_per_lun; int n_io_port; } ;
struct TYPE_8__ {void* use_clustering; } ;


 char* BN (unsigned int) ;
 int CMD_ENA_INTR ;
 void* DISABLE_CLUSTERING ;
 int DMA_MODE_CASCADE ;
 unsigned char ESA ;
 int FALSE ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 TYPE_6__* HD (unsigned int) ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 unsigned char ISA ;
 unsigned char MAX_CHANNEL ;
 scalar_t__ MAX_CMD_PER_LUN ;
 int MAX_LUN ;
 unsigned char MAX_MAILBOXES ;
 void* MAX_SAFE_SGLIST ;
 int MAX_SGLIST ;
 scalar_t__ MAX_TAGGED_CMD_PER_LUN ;
 int MAX_TARGET ;
 unsigned char NO_DMA ;
 int PCI_DMA_BIDIRECTIONAL ;
 void* PRODUCT_ID1 ;
 unsigned char PRODUCT_ID2 ;
 int REGION_SIZE ;
 scalar_t__ REG_CONFIG1 ;
 scalar_t__ REG_CONFIG2 ;
 scalar_t__ REG_LCL_MASK ;
 scalar_t__ REG_PRODUCT_ID1 ;
 scalar_t__ REG_PRODUCT_ID2 ;
 scalar_t__ REG_SYS_MASK ;
 scalar_t__ TAG_DISABLED ;
 scalar_t__ TAG_ORDERED ;
 scalar_t__ TAG_SIMPLE ;
 int TRUE ;
 int YESNO (scalar_t__) ;
 int board_inquiry (unsigned int) ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (unsigned char) ;
 int disable_dma (unsigned char) ;
 int do_interrupt_handler ;
 int driver_lock ;
 char* driver_name ;
 int enable_dma (unsigned char) ;
 scalar_t__ ext_tran ;
 int free_dma (unsigned char) ;
 int free_irq (unsigned char,int *) ;
 scalar_t__ have_old_firmware ;
 void* inb (scalar_t__) ;
 int kmalloc (int,int) ;
 scalar_t__ linked_comm ;
 scalar_t__ max_queue_depth ;
 int memset (TYPE_6__*,int ,int) ;
 int outb (int ,scalar_t__) ;
 int pci_map_single (int *,TYPE_5__*,int,int ) ;
 int printk (char*,...) ;
 int release_dma_lock (unsigned long) ;
 int release_region (unsigned long,int ) ;
 scalar_t__ request_dma (unsigned char,char*) ;
 scalar_t__ request_irq (unsigned char,int ,int,char*,void*) ;
 int request_region (unsigned long,int ,char*) ;
 TYPE_2__* scsi_register (struct scsi_host_template*,int) ;
 int set_dma_mode (unsigned char,int ) ;
 TYPE_2__** sh ;
 int * sha ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 scalar_t__ tag_mode ;
 int u14_34f_release (TYPE_2__*) ;

__attribute__((used)) static int port_detect (unsigned long port_base, unsigned int j, struct scsi_host_template *tpnt) {

   unsigned char irq, dma_channel, subversion, i;
   unsigned char in_byte;
   char *bus_type, dma_name[16];


   unsigned long bios_segment_table[8] = {
      0,
      0xc4000, 0xc8000, 0xcc000, 0xd0000,
      0xd4000, 0xd8000, 0xdc000
      };


   unsigned char interrupt_table[4] = { 15, 14, 11, 10 };


   unsigned char dma_channel_table[4] = { 5, 6, 7, 0 };


   struct {
      unsigned char heads;
      unsigned char sectors;
      } mapping_table[4] = {
           { 16, 63 }, { 64, 32 }, { 64, 63 }, { 64, 32 }
           };

   struct config_1 {





      unsigned char bios_segment: 3, removable_disks_as_fixed: 1,
                    interrupt: 2, dma_channel: 2;


      } config_1;

   struct config_2 {





      unsigned char ha_scsi_id: 3, mapping_mode: 2,
                    bios_drive_number: 1, tfr_port: 2;


      } config_2;

   char name[16];

   sprintf(name, "%s%d", driver_name, j);

   if (!request_region(port_base, REGION_SIZE, driver_name)) {



      goto fail;
      }

   spin_lock_irq(&driver_lock);

   if (inb(port_base + REG_PRODUCT_ID1) != PRODUCT_ID1) goto freelock;

   in_byte = inb(port_base + REG_PRODUCT_ID2);

   if ((in_byte & 0xf0) != PRODUCT_ID2) goto freelock;

   *(char *)&config_1 = inb(port_base + REG_CONFIG1);
   *(char *)&config_2 = inb(port_base + REG_CONFIG2);

   irq = interrupt_table[config_1.interrupt];
   dma_channel = dma_channel_table[config_1.dma_channel];
   subversion = (in_byte & 0x0f);


   if (request_irq(irq, do_interrupt_handler,
             IRQF_DISABLED | ((subversion == ESA) ? IRQF_SHARED : 0),
             driver_name, (void *) &sha[j])) {
      printk("%s: unable to allocate IRQ %u, detaching.\n", name, irq);
      goto freelock;
      }

   if (subversion == ISA && request_dma(dma_channel, driver_name)) {
      printk("%s: unable to allocate DMA channel %u, detaching.\n",
             name, dma_channel);
      goto freeirq;
      }

   if (have_old_firmware) tpnt->use_clustering = DISABLE_CLUSTERING;

   spin_unlock_irq(&driver_lock);
   sh[j] = scsi_register(tpnt, sizeof(struct hostdata));
   spin_lock_irq(&driver_lock);

   if (sh[j] == ((void*)0)) {
      printk("%s: unable to register host, detaching.\n", name);
      goto freedma;
      }

   sh[j]->io_port = port_base;
   sh[j]->unique_id = port_base;
   sh[j]->n_io_port = REGION_SIZE;
   sh[j]->base = bios_segment_table[config_1.bios_segment];
   sh[j]->irq = irq;
   sh[j]->sg_tablesize = MAX_SGLIST;
   sh[j]->this_id = config_2.ha_scsi_id;
   sh[j]->can_queue = MAX_MAILBOXES;
   sh[j]->cmd_per_lun = MAX_CMD_PER_LUN;
   if (sh[j]->this_id == 0) sh[j]->this_id = -1;


   if (sh[j]->base == 0) outb(CMD_ENA_INTR, sh[j]->io_port + REG_SYS_MASK);

   memset(HD(j), 0, sizeof(struct hostdata));
   HD(j)->heads = mapping_table[config_2.mapping_mode].heads;
   HD(j)->sectors = mapping_table[config_2.mapping_mode].sectors;
   HD(j)->subversion = subversion;
   HD(j)->pdev = ((void*)0);
   HD(j)->board_number = j;

   if (have_old_firmware) sh[j]->sg_tablesize = MAX_SAFE_SGLIST;

   if (HD(j)->subversion == ESA) {
      sh[j]->unchecked_isa_dma = FALSE;
      sh[j]->dma_channel = NO_DMA;
      sprintf(BN(j), "U34F%d", j);
      bus_type = "VESA";
      }
   else {
      unsigned long flags;
      sh[j]->unchecked_isa_dma = TRUE;

      flags=claim_dma_lock();
      disable_dma(dma_channel);
      clear_dma_ff(dma_channel);
      set_dma_mode(dma_channel, DMA_MODE_CASCADE);
      enable_dma(dma_channel);
      release_dma_lock(flags);

      sh[j]->dma_channel = dma_channel;
      sprintf(BN(j), "U14F%d", j);
      bus_type = "ISA";
      }

   sh[j]->max_channel = MAX_CHANNEL - 1;
   sh[j]->max_id = MAX_TARGET;
   sh[j]->max_lun = MAX_LUN;

   if (HD(j)->subversion == ISA && !board_inquiry(j)) {
      HD(j)->board_id[40] = 0;

      if (strcmp(&HD(j)->board_id[32], "06000600")) {
         printk("%s: %s.\n", BN(j), &HD(j)->board_id[8]);
         printk("%s: firmware %s is outdated, FW PROM should be 28004-006.\n",
                BN(j), &HD(j)->board_id[32]);
         sh[j]->hostt->use_clustering = DISABLE_CLUSTERING;
         sh[j]->sg_tablesize = MAX_SAFE_SGLIST;
         }
      }

   if (dma_channel == NO_DMA) sprintf(dma_name, "%s", "BMST");
   else sprintf(dma_name, "DMA %u", dma_channel);

   spin_unlock_irq(&driver_lock);

   for (i = 0; i < sh[j]->can_queue; i++)
      HD(j)->cp[i].cp_dma_addr = pci_map_single(HD(j)->pdev,
            &HD(j)->cp[i], sizeof(struct mscp), PCI_DMA_BIDIRECTIONAL);

   for (i = 0; i < sh[j]->can_queue; i++)
      if (! ((&HD(j)->cp[i])->sglist = kmalloc(
            sh[j]->sg_tablesize * sizeof(struct sg_list),
            (sh[j]->unchecked_isa_dma ? GFP_DMA : 0) | GFP_ATOMIC))) {
         printk("%s: kmalloc SGlist failed, mbox %d, detaching.\n", BN(j), i);
         goto release;
         }

   if (max_queue_depth > MAX_TAGGED_CMD_PER_LUN)
       max_queue_depth = MAX_TAGGED_CMD_PER_LUN;

   if (max_queue_depth < MAX_CMD_PER_LUN) max_queue_depth = MAX_CMD_PER_LUN;

   if (tag_mode != TAG_DISABLED && tag_mode != TAG_SIMPLE)
      tag_mode = TAG_ORDERED;

   if (j == 0) {
      printk("UltraStor 14F/34F: Copyright (C) 1994-2003 Dario Ballabio.\n");
      printk("%s config options -> of:%c, tm:%d, lc:%c, mq:%d, et:%c.\n",
             driver_name, YESNO(have_old_firmware), tag_mode,
             YESNO(linked_comm), max_queue_depth, YESNO(ext_tran));
      }

   printk("%s: %s 0x%03lx, BIOS 0x%05x, IRQ %u, %s, SG %d, MB %d.\n",
          BN(j), bus_type, (unsigned long)sh[j]->io_port, (int)sh[j]->base,
          sh[j]->irq, dma_name, sh[j]->sg_tablesize, sh[j]->can_queue);

   if (sh[j]->max_id > 8 || sh[j]->max_lun > 8)
      printk("%s: wide SCSI support enabled, max_id %u, max_lun %u.\n",
             BN(j), sh[j]->max_id, sh[j]->max_lun);

   for (i = 0; i <= sh[j]->max_channel; i++)
      printk("%s: SCSI channel %u enabled, host target ID %d.\n",
             BN(j), i, sh[j]->this_id);

   return TRUE;

freedma:
   if (subversion == ISA) free_dma(dma_channel);
freeirq:
   free_irq(irq, &sha[j]);
freelock:
   spin_unlock_irq(&driver_lock);
   release_region(port_base, REGION_SIZE);
fail:
   return FALSE;

release:
   u14_34f_release(sh[j]);
   return FALSE;
}
