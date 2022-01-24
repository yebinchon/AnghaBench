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
struct request {TYPE_1__* rq_disk; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*,int,unsigned int) ; 
 unsigned int FUNC1 (struct request*) ; 
 unsigned int current_count_sectors ; 
 int /*<<< orphan*/ * current_req ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct request *req, int error)
{
	unsigned int nr_sectors = current_count_sectors;
	unsigned int drive = (unsigned long)req->rq_disk->private_data;

	/* current_count_sectors can be zero if transfer failed */
	if (error)
		nr_sectors = FUNC1(req);
	if (FUNC0(req, error, nr_sectors << 9))
		return;

	/* We're done with the request */
	FUNC2(drive);
	current_req = NULL;
}