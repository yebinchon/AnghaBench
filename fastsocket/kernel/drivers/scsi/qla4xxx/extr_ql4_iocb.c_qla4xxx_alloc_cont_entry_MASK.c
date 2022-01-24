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
typedef  scalar_t__ uint8_t ;
struct scsi_qla_host {int /*<<< orphan*/  request_in; scalar_t__ request_ptr; } ;
struct TYPE_2__ {int entryCount; scalar_t__ systemDefined; int /*<<< orphan*/  entryType; } ;
struct continuation_t1_entry {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_CONTINUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 

__attribute__((used)) static struct continuation_t1_entry *
FUNC2(struct scsi_qla_host *ha)
{
	struct continuation_t1_entry *cont_entry;

	cont_entry = (struct continuation_t1_entry *)ha->request_ptr;

	FUNC1(ha);

	/* Load packet defaults */
	cont_entry->hdr.entryType = ET_CONTINUE;
	cont_entry->hdr.entryCount = 1;
	cont_entry->hdr.systemDefined = (uint8_t) FUNC0(ha->request_in);

	return cont_entry;
}