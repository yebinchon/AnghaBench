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
struct sas_rphy {struct request_queue* q; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 TYPE_1__* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC2(struct Scsi_Host *shost, struct sas_rphy *rphy)
{
	struct request_queue *q;

	if (rphy)
		q = rphy->q;
	else
		q = FUNC1(shost)->q;

	if (!q)
		return;

	FUNC0(q);
}