#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_hba {int /*<<< orphan*/  pport; } ;
struct lpfc_board_event_header {int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  board_event ;

/* Variables and functions */
 int /*<<< orphan*/  FC_REG_BOARD_EVENT ; 
 int /*<<< orphan*/  LPFC_EVENT_PORTINTERR ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_board_event_header board_event;
	struct Scsi_Host *shost;

	board_event.event_type = FC_REG_BOARD_EVENT;
	board_event.subcategory = LPFC_EVENT_PORTINTERR;
	shost = FUNC2(phba->pport);
	FUNC1(shost, FUNC0(),
				  sizeof(board_event),
				  (char *) &board_event,
				  LPFC_NL_VENDOR_ID);
}