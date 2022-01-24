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
struct tape_request {int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; struct tape3592_kekl_set_order* cpdata; } ;
struct tape_device {int dummy; } ;
struct tape390_kekl_pair {int /*<<< orphan*/ * kekl; } ;
struct TYPE_2__ {int count; int /*<<< orphan*/ * kekl; } ;
struct tape3592_kekl_set_order {int code; TYPE_1__ kekls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EBADSLT ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  PERF_SUBSYS_FUNC ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_KEKL_SET ; 
 scalar_t__ FUNC3 (struct tape390_kekl_pair*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tape3592_kekl_set_order*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct tape_device*,int /*<<< orphan*/ ) ; 
 struct tape_request* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tape3592_kekl_set_order*) ; 
 int FUNC9 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int FUNC10(struct tape_device *device,
			      struct tape390_kekl_pair *ext_kekls)
{
	struct tape_request *request;
	struct tape3592_kekl_set_order *order;

	FUNC0(6, "tape3592_kekl_set\n");
	if (FUNC3(ext_kekls)) {
		FUNC0(6, "invalid kekls\n");
		return -EINVAL;
	}
	if (FUNC6(device, 0) != 0)
		return -EBADSLT;
	request = FUNC7(1, sizeof(*order));
	if (FUNC1(request))
		return FUNC2(request);
	order = request->cpdata;
	FUNC5(order, 0, sizeof(*order));
	order->code = 0xe3;
	order->kekls.count = 2;
	FUNC4(&ext_kekls->kekl[0], &order->kekls.kekl[0]);
	FUNC4(&ext_kekls->kekl[1], &order->kekls.kekl[1]);
	request->op = TO_KEKL_SET;
	FUNC8(request->cpaddr, PERF_SUBSYS_FUNC, sizeof(*order), order);

	return FUNC9(device, request);
}