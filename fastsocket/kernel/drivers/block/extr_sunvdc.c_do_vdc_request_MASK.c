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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 struct request* FUNC2 (struct request_queue*) ; 

__attribute__((used)) static void FUNC3(struct request_queue *q)
{
	while (1) {
		struct request *req = FUNC2(q);

		if (!req)
			break;

		if (FUNC1(req) < 0)
			FUNC0(req, -EIO);
	}
}