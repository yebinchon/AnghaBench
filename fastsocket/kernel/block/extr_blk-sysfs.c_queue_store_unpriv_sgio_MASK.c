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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  QUEUE_FLAG_UNPRIV_SGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6(struct request_queue *q, const char *page, size_t count)
{
	unsigned long val;
	ssize_t ret;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	ret = FUNC3(&val, page, count);
	FUNC4(q->queue_lock);
	if (val)
		FUNC2(QUEUE_FLAG_UNPRIV_SGIO, q);
	else
		FUNC1(QUEUE_FLAG_UNPRIV_SGIO, q);
	FUNC5(q->queue_lock);
	return ret;
}