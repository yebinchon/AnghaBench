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
typedef  int /*<<< orphan*/  u64 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EHCA_PAGESIZE ; 
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  ERROR_DATA_LENGTH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long H_R_STATE ; 
 unsigned long H_SUCCESS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehca_shca*,void*,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct ehca_shca *shca, void *data,
		    u64 resource)
{

	unsigned long ret;
	u64 *rblock;
	unsigned long block_count;

	rblock = FUNC1(GFP_ATOMIC);
	if (!rblock) {
		FUNC2(&shca->ib_device, "Cannot allocate rblock memory.");
		ret = -ENOMEM;
		goto error_data1;
	}

	/* rblock must be 4K aligned and should be 4K large */
	ret = FUNC4(shca->ipz_hca_handle,
				resource,
				rblock,
				&block_count);

	if (ret == H_R_STATE)
		FUNC2(&shca->ib_device,
			 "No error data is available: %llx.", resource);
	else if (ret == H_SUCCESS) {
		int length;

		length = FUNC0(ERROR_DATA_LENGTH, rblock[0]);

		if (length > EHCA_PAGESIZE)
			length = EHCA_PAGESIZE;

		FUNC5(shca, data, rblock, length);
	} else
		FUNC2(&shca->ib_device,
			 "Error data could not be fetched: %llx", resource);

	FUNC3(rblock);

error_data1:
	return ret;

}