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
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_th; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 TYPE_1__* cpg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ablkcipher_request *req)
{
	unsigned long flags;
	int ret;

	FUNC1(&cpg->lock, flags);
	ret = FUNC0(&cpg->queue, req);
	FUNC2(&cpg->lock, flags);
	FUNC3(cpg->queue_th);
	return ret;
}