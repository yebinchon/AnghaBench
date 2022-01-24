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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*) ; 

__attribute__((used)) static inline int FUNC2(struct qdio_q *q, unsigned int ccq)
{
	/* all done or next buffer state different */
	if (ccq == 0 || ccq == 32)
		return 0;
	/* no buffer processed */
	if (ccq == 97)
		return 1;
	/* not all buffers processed */
	if (ccq == 96)
		return 2;
	/* notify devices immediately */
	FUNC0("%4x ccq:%3d", FUNC1(q), ccq);
	return -EIO;
}