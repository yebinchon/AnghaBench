#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; int /*<<< orphan*/  end_io_data; } ;
struct TYPE_10__ {long LogicalDriveNumber; int /*<<< orphan*/  DmaDirection; int /*<<< orphan*/  SegmentCount; int /*<<< orphan*/  cmd_sglist; struct request* Request; int /*<<< orphan*/  BlockCount; int /*<<< orphan*/  BlockNumber; int /*<<< orphan*/  Completion; int /*<<< orphan*/  CommandType; } ;
struct TYPE_9__ {int /*<<< orphan*/  PCIDevice; } ;
struct TYPE_8__ {scalar_t__ private_data; } ;
typedef  TYPE_2__ DAC960_Controller_T ;
typedef  TYPE_3__ DAC960_Command_T ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DAC960_ReadCommand ; 
 int /*<<< orphan*/  DAC960_WriteCommand ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ READ ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct request*) ; 

__attribute__((used)) static int FUNC9(DAC960_Controller_T *Controller, struct request_queue *req_q)
{
	struct request *Request;
	DAC960_Command_T *Command;

   while(1) {
	Request = FUNC2(req_q);
	if (!Request)
		return 1;

	Command = FUNC0(Controller);
	if (Command == NULL)
		return 0;

	if (FUNC8(Request) == READ) {
		Command->DmaDirection = PCI_DMA_FROMDEVICE;
		Command->CommandType = DAC960_ReadCommand;
	} else {
		Command->DmaDirection = PCI_DMA_TODEVICE;
		Command->CommandType = DAC960_WriteCommand;
	}
	Command->Completion = Request->end_io_data;
	Command->LogicalDriveNumber = (long)Request->rq_disk->private_data;
	Command->BlockNumber = FUNC4(Request);
	Command->BlockCount = FUNC5(Request);
	Command->Request = Request;
	FUNC6(Request);
	Command->SegmentCount = FUNC3(req_q,
		  Command->Request, Command->cmd_sglist);
	/* pci_map_sg MAY change the value of SegCount */
	Command->SegmentCount = FUNC7(Controller->PCIDevice, Command->cmd_sglist,
		 Command->SegmentCount, Command->DmaDirection);

	FUNC1(Command);
  }
}