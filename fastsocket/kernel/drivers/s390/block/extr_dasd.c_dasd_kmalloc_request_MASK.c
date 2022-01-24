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
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int magic; int /*<<< orphan*/  flags; struct dasd_ccw_req* cpaddr; int /*<<< orphan*/ * data; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_ccw_req* FUNC1 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 struct dasd_ccw_req* FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct dasd_ccw_req *FUNC7(int magic, int cplength,
					  int datasize,
					  struct dasd_device *device)
{
	struct dasd_ccw_req *cqr;

	/* Sanity checks */
	FUNC0(datasize > PAGE_SIZE ||
	     (cplength*sizeof(struct ccw1)) > PAGE_SIZE);

	cqr = FUNC5(sizeof(struct dasd_ccw_req), GFP_ATOMIC);
	if (cqr == NULL)
		return FUNC1(-ENOMEM);
	cqr->cpaddr = NULL;
	if (cplength > 0) {
		cqr->cpaddr = FUNC3(cplength, sizeof(struct ccw1),
				      GFP_ATOMIC | GFP_DMA);
		if (cqr->cpaddr == NULL) {
			FUNC4(cqr);
			return FUNC1(-ENOMEM);
		}
	}
	cqr->data = NULL;
	if (datasize > 0) {
		cqr->data = FUNC5(datasize, GFP_ATOMIC | GFP_DMA);
		if (cqr->data == NULL) {
			FUNC4(cqr->cpaddr);
			FUNC4(cqr);
			return FUNC1(-ENOMEM);
		}
	}
	cqr->magic =  magic;
	FUNC6(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
	FUNC2(device);
	return cqr;
}