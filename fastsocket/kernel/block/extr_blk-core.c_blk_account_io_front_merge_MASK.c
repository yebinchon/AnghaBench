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
struct request {int /*<<< orphan*/  __sector; int /*<<< orphan*/  rq_disk; } ;
struct hd_struct {int /*<<< orphan*/ * in_flight; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hd_struct**,struct hd_struct**) ; 
 int /*<<< orphan*/  FUNC2 (int,struct hd_struct*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (struct request*) ; 

__attribute__((used)) static void FUNC6(struct request *req, sector_t newsector)
{
	if (FUNC0(req)) {
		struct hd_struct *oldpart, *newpart;
		int cpu;

		cpu = FUNC3();
		if (!FUNC1(req->rq_disk, req->__sector, newsector,
				  &oldpart, &newpart)) {
			if (oldpart) {
				FUNC2(cpu, oldpart);
				oldpart->in_flight[FUNC5(req)]--;
			}
			if (newpart) {
				FUNC2(cpu, newpart);
				newpart->in_flight[FUNC5(req)]++;
			}
		}
		FUNC4();
	}
}