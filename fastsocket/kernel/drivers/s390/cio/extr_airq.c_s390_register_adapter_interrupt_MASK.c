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
typedef  size_t u8 ;
struct airq_t {void* drv_data; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  dbf_txt ;
typedef  int /*<<< orphan*/  adapter_int_handler_t ;
struct TYPE_2__ {void* byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_ISC ; 
 TYPE_1__* indicators ; 
 int /*<<< orphan*/  FUNC2 (struct airq_t*) ; 
 struct airq_t* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct airq_t*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

void *FUNC6(adapter_int_handler_t handler,
				      void *drv_data, u8 isc)
{
	struct airq_t *airq;
	char dbf_txt[16];
	int ret;

	if (isc > MAX_ISC)
		return FUNC1(-EINVAL);
	airq = FUNC3(sizeof(struct airq_t), GFP_KERNEL);
	if (!airq) {
		ret = -ENOMEM;
		goto out;
	}
	airq->handler = handler;
	airq->drv_data = drv_data;

	ret = FUNC4(airq, isc);
out:
	FUNC5(dbf_txt, sizeof(dbf_txt), "rairq:%d", ret);
	FUNC0(4, dbf_txt);
	if (ret < 0) {
		FUNC2(airq);
		return FUNC1(ret);
	} else
		return &indicators[isc].byte[ret];
}