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
struct rdma_cm_id {scalar_t__ context; } ;
struct iser_device {int dummy; } ;
struct iser_conn {struct iser_device* device; } ;

/* Variables and functions */
 int FUNC0 (struct rdma_cm_id*) ; 
 struct iser_device* FUNC1 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct rdma_cm_id*,int) ; 

__attribute__((used)) static int FUNC4(struct rdma_cm_id *cma_id)
{
	struct iser_device *device;
	struct iser_conn   *ib_conn;
	int    ret;

	device = FUNC1(cma_id);
	if (!device) {
		FUNC2("device lookup/creation failed\n");
		return FUNC0(cma_id);
	}

	ib_conn = (struct iser_conn *)cma_id->context;
	ib_conn->device = device;

	ret = FUNC3(cma_id, 1000);
	if (ret) {
		FUNC2("resolve route failed: %d\n", ret);
		return FUNC0(cma_id);
	}

	return 0;
}