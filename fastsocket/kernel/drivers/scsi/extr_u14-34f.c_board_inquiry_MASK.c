#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mscp {int cp_dma_addr; int cdb_len; scalar_t__ adapter_status; int /*<<< orphan*/ * cdb; void* data_len; void* data_address; int /*<<< orphan*/  xdir; int /*<<< orphan*/  opcode; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {scalar_t__* cp_stat; int /*<<< orphan*/  pdev; struct mscp* cp; struct mscp* board_id; } ;
struct TYPE_3__ {scalar_t__ io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CMD_CLR_INTR ; 
 int /*<<< orphan*/  CMD_OGM_INTR ; 
 scalar_t__ CP_TAIL_SIZE ; 
 int /*<<< orphan*/  DTD_IN ; 
 int FALSE ; 
 scalar_t__ FREE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  HA_CMD_INQUIRY ; 
 TYPE_2__* FUNC2 (unsigned int) ; 
 unsigned long HZ ; 
 scalar_t__ IGNORE ; 
 int /*<<< orphan*/  MAXLOOP ; 
 int /*<<< orphan*/  OP_HOST_ADAPTER ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 scalar_t__ REG_LCL_INTR ; 
 scalar_t__ REG_OGM ; 
 scalar_t__ REG_SYS_INTR ; 
 int TRUE ; 
 int /*<<< orphan*/  driver_lock ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct mscp*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ,struct mscp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__** sh ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(unsigned int j) {
   struct mscp *cpp;
   dma_addr_t id_dma_addr;
   unsigned int limit = 0;
   unsigned long time;

   id_dma_addr = FUNC6(FUNC2(j)->pdev, FUNC2(j)->board_id,
                    sizeof(FUNC2(j)->board_id), PCI_DMA_BIDIRECTIONAL);
   cpp = &FUNC2(j)->cp[0];
   cpp->cp_dma_addr = FUNC6(FUNC2(j)->pdev, cpp, sizeof(struct mscp),
                                     PCI_DMA_BIDIRECTIONAL);
   FUNC3(cpp, 0, sizeof(struct mscp) - CP_TAIL_SIZE);
   cpp->opcode = OP_HOST_ADAPTER;
   cpp->xdir = DTD_IN;
   cpp->data_address = FUNC1(id_dma_addr);
   cpp->data_len = FUNC1(sizeof(FUNC2(j)->board_id));
   cpp->cdb_len = 6;
   cpp->cdb[0] = HA_CMD_INQUIRY;

   if (FUNC12(sh[j]->io_port, MAXLOOP)) {
      FUNC8("%s: board_inquiry, adapter busy.\n", FUNC0(j));
      return TRUE;
      }

   FUNC2(j)->cp_stat[0] = IGNORE;

   /* Clear the interrupt indication */
   FUNC4(CMD_CLR_INTR, sh[j]->io_port + REG_SYS_INTR);

   /* Store pointer in OGM address bytes */
   FUNC5(FUNC1(cpp->cp_dma_addr), sh[j]->io_port + REG_OGM);

   /* Issue OGM interrupt */
   FUNC4(CMD_OGM_INTR, sh[j]->io_port + REG_LCL_INTR);

   FUNC10(&driver_lock);
   time = jiffies;
   while ((jiffies - time) < HZ && limit++ < 20000) FUNC11(100L);
   FUNC9(&driver_lock);

   if (cpp->adapter_status || FUNC2(j)->cp_stat[0] != FREE) {
      FUNC2(j)->cp_stat[0] = FREE;
      FUNC8("%s: board_inquiry, err 0x%x.\n", FUNC0(j), cpp->adapter_status);
      return TRUE;
      }

   FUNC7(FUNC2(j)->pdev, cpp->cp_dma_addr, sizeof(struct mscp),
                    PCI_DMA_BIDIRECTIONAL);
   FUNC7(FUNC2(j)->pdev, id_dma_addr, sizeof(FUNC2(j)->board_id),
                    PCI_DMA_BIDIRECTIONAL);
   return FALSE;
}