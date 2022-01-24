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
struct qdio_output_q {int use_cq; int /*<<< orphan*/  aobs; } ;
struct qaob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(struct qdio_output_q *q)
{
	int rc;
	int use_cq;

	rc = 0;
	use_cq = 1;
	q->aobs = FUNC0(sizeof(struct qaob *) * QDIO_MAX_BUFFERS_PER_Q,
			  GFP_ATOMIC);
	if (!q->aobs) {
		use_cq = 0;
		rc = -1;
		goto out;
	}

out:
	q->use_cq = use_cq;
	return rc;
}