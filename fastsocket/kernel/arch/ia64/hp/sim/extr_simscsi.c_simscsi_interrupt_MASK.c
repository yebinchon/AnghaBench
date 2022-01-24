#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  serial_number; } ;
struct TYPE_2__ {struct scsi_cmnd* sc; } ;

/* Variables and functions */
 scalar_t__ DBG ; 
 size_t SIMSCSI_REQ_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_reqs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* queue ; 
 size_t rd ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void
FUNC3 (unsigned long val)
{
	struct scsi_cmnd *sc;

	while ((sc = queue[rd].sc) != NULL) {
		FUNC0(&num_reqs);
		queue[rd].sc = NULL;
		if (DBG)
			FUNC1("simscsi_interrupt: done with %ld\n", sc->serial_number);
		(*sc->scsi_done)(sc);
		rd = (rd + 1) % SIMSCSI_REQ_QUEUE_LEN;
	}
}