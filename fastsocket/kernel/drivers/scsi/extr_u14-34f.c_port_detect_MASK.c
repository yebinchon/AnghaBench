#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sg_list {int dummy; } ;
struct scsi_host_template {void* use_clustering; } ;
struct mscp {int dummy; } ;
struct hostdata {int dummy; } ;
struct TYPE_11__ {unsigned char heads; unsigned char sectors; unsigned char subversion; unsigned int board_number; TYPE_5__* cp; int /*<<< orphan*/ * pdev; scalar_t__* board_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  sglist; int /*<<< orphan*/  cp_dma_addr; } ;
struct TYPE_9__ {unsigned long io_port; unsigned long unique_id; unsigned long base; unsigned char irq; int sg_tablesize; int this_id; unsigned char can_queue; int unchecked_isa_dma; unsigned char dma_channel; unsigned char max_channel; int max_id; int max_lun; TYPE_1__* hostt; scalar_t__ cmd_per_lun; int /*<<< orphan*/  n_io_port; } ;
struct TYPE_8__ {void* use_clustering; } ;

/* Variables and functions */
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CMD_ENA_INTR ; 
 void* DISABLE_CLUSTERING ; 
 int /*<<< orphan*/  DMA_MODE_CASCADE ; 
 unsigned char ESA ; 
 int FALSE ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 TYPE_6__* FUNC1 (unsigned int) ; 
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
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 void* PRODUCT_ID1 ; 
 unsigned char PRODUCT_ID2 ; 
 int /*<<< orphan*/  REGION_SIZE ; 
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
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  do_interrupt_handler ; 
 int /*<<< orphan*/  driver_lock ; 
 char* driver_name ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 scalar_t__ ext_tran ; 
 int /*<<< orphan*/  FUNC8 (unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,int /*<<< orphan*/ *) ; 
 scalar_t__ have_old_firmware ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 scalar_t__ linked_comm ; 
 scalar_t__ max_queue_depth ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (unsigned char,char*) ; 
 scalar_t__ FUNC19 (unsigned char,int /*<<< orphan*/ ,int,char*,void*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned long,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC21 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char,int /*<<< orphan*/ ) ; 
 TYPE_2__** sh ; 
 int /*<<< orphan*/ * sha ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,...) ; 
 scalar_t__ FUNC26 (scalar_t__*,char*) ; 
 scalar_t__ tag_mode ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC28 \
      (unsigned long port_base, unsigned int j, struct scsi_host_template *tpnt) {
   unsigned char irq, dma_channel, subversion, i;
   unsigned char in_byte;
   char *bus_type, dma_name[16];

   /* Allowed BIOS base addresses (NULL indicates reserved) */
   unsigned long bios_segment_table[8] = {
      0,
      0xc4000, 0xc8000, 0xcc000, 0xd0000,
      0xd4000, 0xd8000, 0xdc000
      };

   /* Allowed IRQs */
   unsigned char interrupt_table[4] = { 15, 14, 11, 10 };

   /* Allowed DMA channels for ISA (0 indicates reserved) */
   unsigned char dma_channel_table[4] = { 5, 6, 7, 0 };

   /* Head/sector mappings */
   struct {
      unsigned char heads;
      unsigned char sectors;
      } mapping_table[4] = {
           { 16, 63 }, { 64, 32 }, { 64, 63 }, { 64, 32 }
           };

   struct config_1 {

#if defined(__BIG_ENDIAN_BITFIELD)
      unsigned char dma_channel: 2, interrupt:2,
                    removable_disks_as_fixed:1, bios_segment: 3;
#else
      unsigned char bios_segment: 3, removable_disks_as_fixed: 1,
                    interrupt: 2, dma_channel: 2;
#endif

      } config_1;

   struct config_2 {

#if defined(__BIG_ENDIAN_BITFIELD)
      unsigned char tfr_port: 2, bios_drive_number: 1,
                    mapping_mode: 2, ha_scsi_id: 3;
#else
      unsigned char ha_scsi_id: 3, mapping_mode: 2,
                    bios_drive_number: 1, tfr_port: 2;
#endif

      } config_2;

   char name[16];

   FUNC25(name, "%s%d", driver_name, j);

   if (!FUNC20(port_base, REGION_SIZE, driver_name)) {
#if defined(DEBUG_DETECT)
      printk("%s: address 0x%03lx in use, skipping probe.\n", name, port_base);
#endif
      goto fail;
      }

   FUNC23(&driver_lock);

   if (FUNC10(port_base + REG_PRODUCT_ID1) != PRODUCT_ID1) goto freelock;

   in_byte = FUNC10(port_base + REG_PRODUCT_ID2);

   if ((in_byte & 0xf0) != PRODUCT_ID2) goto freelock;

   *(char *)&config_1 = FUNC10(port_base + REG_CONFIG1);
   *(char *)&config_2 = FUNC10(port_base + REG_CONFIG2);

   irq = interrupt_table[config_1.interrupt];
   dma_channel = dma_channel_table[config_1.dma_channel];
   subversion = (in_byte & 0x0f);

   /* Board detected, allocate its IRQ */
   if (FUNC19(irq, do_interrupt_handler,
             IRQF_DISABLED | ((subversion == ESA) ? IRQF_SHARED : 0),
             driver_name, (void *) &sha[j])) {
      FUNC15("%s: unable to allocate IRQ %u, detaching.\n", name, irq);
      goto freelock;
      }

   if (subversion == ISA && FUNC18(dma_channel, driver_name)) {
      FUNC15("%s: unable to allocate DMA channel %u, detaching.\n",
             name, dma_channel);
      goto freeirq;
      }

   if (have_old_firmware) tpnt->use_clustering = DISABLE_CLUSTERING;

   FUNC24(&driver_lock);
   sh[j] = FUNC21(tpnt, sizeof(struct hostdata));
   FUNC23(&driver_lock);

   if (sh[j] == NULL) {
      FUNC15("%s: unable to register host, detaching.\n", name);
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

#if defined(DEBUG_DETECT)
   {
   unsigned char sys_mask, lcl_mask;

   sys_mask = inb(sh[j]->io_port + REG_SYS_MASK);
   lcl_mask = inb(sh[j]->io_port + REG_LCL_MASK);
   printk("SYS_MASK 0x%x, LCL_MASK 0x%x.\n", sys_mask, lcl_mask);
   }
#endif

   /* Probably a bogus host scsi id, set it to the dummy value */
   if (sh[j]->this_id == 0) sh[j]->this_id = -1;

   /* If BIOS is disabled, force enable interrupts */
   if (sh[j]->base == 0) FUNC13(CMD_ENA_INTR, sh[j]->io_port + REG_SYS_MASK);

   FUNC12(FUNC1(j), 0, sizeof(struct hostdata));
   FUNC1(j)->heads = mapping_table[config_2.mapping_mode].heads;
   FUNC1(j)->sectors = mapping_table[config_2.mapping_mode].sectors;
   FUNC1(j)->subversion = subversion;
   FUNC1(j)->pdev = NULL;
   FUNC1(j)->board_number = j;

   if (have_old_firmware) sh[j]->sg_tablesize = MAX_SAFE_SGLIST;

   if (FUNC1(j)->subversion == ESA) {
      sh[j]->unchecked_isa_dma = FALSE;
      sh[j]->dma_channel = NO_DMA;
      FUNC25(FUNC0(j), "U34F%d", j);
      bus_type = "VESA";
      }
   else {
      unsigned long flags;
      sh[j]->unchecked_isa_dma = TRUE;

      flags=FUNC4();
      FUNC6(dma_channel);
      FUNC5(dma_channel);
      FUNC22(dma_channel, DMA_MODE_CASCADE);
      FUNC7(dma_channel);
      FUNC16(flags);

      sh[j]->dma_channel = dma_channel;
      FUNC25(FUNC0(j), "U14F%d", j);
      bus_type = "ISA";
      }

   sh[j]->max_channel = MAX_CHANNEL - 1;
   sh[j]->max_id = MAX_TARGET;
   sh[j]->max_lun = MAX_LUN;

   if (FUNC1(j)->subversion == ISA && !FUNC3(j)) {
      FUNC1(j)->board_id[40] = 0;

      if (FUNC26(&FUNC1(j)->board_id[32], "06000600")) {
         FUNC15("%s: %s.\n", FUNC0(j), &FUNC1(j)->board_id[8]);
         FUNC15("%s: firmware %s is outdated, FW PROM should be 28004-006.\n",
                FUNC0(j), &FUNC1(j)->board_id[32]);
         sh[j]->hostt->use_clustering = DISABLE_CLUSTERING;
         sh[j]->sg_tablesize = MAX_SAFE_SGLIST;
         }
      }

   if (dma_channel == NO_DMA) FUNC25(dma_name, "%s", "BMST");
   else                       FUNC25(dma_name, "DMA %u", dma_channel);

   FUNC24(&driver_lock);

   for (i = 0; i < sh[j]->can_queue; i++)
      FUNC1(j)->cp[i].cp_dma_addr = FUNC14(FUNC1(j)->pdev,
            &FUNC1(j)->cp[i], sizeof(struct mscp), PCI_DMA_BIDIRECTIONAL);

   for (i = 0; i < sh[j]->can_queue; i++)
      if (! ((&FUNC1(j)->cp[i])->sglist = FUNC11(
            sh[j]->sg_tablesize * sizeof(struct sg_list),
            (sh[j]->unchecked_isa_dma ? GFP_DMA : 0) | GFP_ATOMIC))) {
         FUNC15("%s: kmalloc SGlist failed, mbox %d, detaching.\n", FUNC0(j), i);
         goto release;
         }

   if (max_queue_depth > MAX_TAGGED_CMD_PER_LUN)
       max_queue_depth = MAX_TAGGED_CMD_PER_LUN;

   if (max_queue_depth < MAX_CMD_PER_LUN) max_queue_depth = MAX_CMD_PER_LUN;

   if (tag_mode != TAG_DISABLED && tag_mode != TAG_SIMPLE)
      tag_mode = TAG_ORDERED;

   if (j == 0) {
      FUNC15("UltraStor 14F/34F: Copyright (C) 1994-2003 Dario Ballabio.\n");
      FUNC15("%s config options -> of:%c, tm:%d, lc:%c, mq:%d, et:%c.\n",
             driver_name, FUNC2(have_old_firmware), tag_mode,
             FUNC2(linked_comm), max_queue_depth, FUNC2(ext_tran));
      }

   FUNC15("%s: %s 0x%03lx, BIOS 0x%05x, IRQ %u, %s, SG %d, MB %d.\n",
          FUNC0(j), bus_type, (unsigned long)sh[j]->io_port, (int)sh[j]->base,
          sh[j]->irq, dma_name, sh[j]->sg_tablesize, sh[j]->can_queue);

   if (sh[j]->max_id > 8 || sh[j]->max_lun > 8)
      FUNC15("%s: wide SCSI support enabled, max_id %u, max_lun %u.\n",
             FUNC0(j), sh[j]->max_id, sh[j]->max_lun);

   for (i = 0; i <= sh[j]->max_channel; i++)
      FUNC15("%s: SCSI channel %u enabled, host target ID %d.\n",
             FUNC0(j), i, sh[j]->this_id);

   return TRUE;

freedma:
   if (subversion == ISA) FUNC8(dma_channel);
freeirq:
   FUNC9(irq, &sha[j]);
freelock:
   FUNC24(&driver_lock);
   FUNC17(port_base, REGION_SIZE);
fail:
   return FALSE;

release:
   FUNC27(sh[j]);
   return FALSE;
}