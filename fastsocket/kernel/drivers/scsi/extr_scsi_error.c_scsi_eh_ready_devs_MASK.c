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
struct list_head {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*,struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*,struct list_head*,struct list_head*) ; 

void FUNC6(struct Scsi_Host *shost,
			struct list_head *work_q,
			struct list_head *done_q)
{
	if (!FUNC4(shost, work_q, done_q))
		if (!FUNC0(shost, work_q, done_q))
			if (!FUNC5(shost, work_q, done_q))
				if (!FUNC1(shost, work_q, done_q))
					if (!FUNC2(work_q, done_q))
						FUNC3(work_q,
								      done_q);
}